from django.db import models
from tinymce.models import HTMLField
from.custom_field import *
from.define import *
from.helpers import *
# Create your models here.
class Category(models.Model):

    
    name = models.CharField(unique=True,max_length=100) 
    #nhung chu khong dau cach nhau boi dau gach ngang
    slug = models.SlugField(unique=True,max_length=100)
    is_homepage=  CustomBooleanField()
    layout = models.CharField(max_length=10, choices=APP_VALUE_LAYOUT_CHOICE,default=APP_VALUE_LAYOUT_DEFAUT)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAUT)
    ordering = models.IntegerField(default=0)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = TABLE_CATEGOGY_SHOW
          

class Article(models.Model):

    name = models.CharField(unique=True,max_length=100) 
    #nhung chu khong dau cach nhau boi dau gach ngang
    slug = models.SlugField(unique=True,max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default=APP_VALUE_STATUS_DEFAUT)
    ordering = models.IntegerField(default=0)
    special = CustomBooleanField()
    publish_date = models.DateTimeField()
    content =HTMLField()
    image = models.ImageField(upload_to=get_file_path)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = TABLE_ARTICLE_SHOW
        
class Feed(models.Model):


    
    name = models.CharField(unique=True,max_length=100) 
    #nhung chu khong dau cach nhau boi dau gach ngang
    slug = models.SlugField(unique=True,max_length=100)
    status = models.CharField(max_length=10, choices=APP_VALUE_STATUS_CHOICES, default='draft')
    ordering = models.IntegerField(default=0)
    link = models.CharField(max_length=250)
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = TABLE_FEED_SHOW
 
    