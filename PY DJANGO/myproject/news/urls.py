from django.urls import path,include

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("123", views.index123, name="index123"),
    path('tinymce/', include('tinymce.urls')),
]
from django.conf import settings
from django.conf.urls.static import static
if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)