# Download the latest ubuntu image for the application
FROM ubuntu 


# Setup the Working Directory

WORKDIR /app

# Copy the current files and folders inside the container

COPY . /app

# Installing the python dependencies for the django application
RUN apt-get update && apt-get install -y  python3 python3-pip python3-venv

# Assigning the shell instead of the default shell
SHELL ["/bin/bash", "-c"]

#Installing the requirements
RUN python3 -m venv newenv && \
    source newenv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

#Expose the port
EXPOSE 8000

# Run the application
CMD source newenv/bin/activate && python manage.py runserver 0.0.0.0:8000





