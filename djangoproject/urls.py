from django.contrib import admin
from django.urls import path
from hello_world.views import index, base

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", index, name="index"),        # Root URL
    path("profile/", base, name="profile") # /profile URL
]
