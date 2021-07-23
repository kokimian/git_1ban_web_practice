from django.contrib.auth.models import User
from django.db import models

# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE,
                                related_name='profile')

    image = models.ImageField(upload_to='profile/', null=True)  # settings에서 설정한 MEDIA_ROOT의 media 폴더 아래에 profile 폴더에 저장
    nickname = models.CharField(max_length=20, unique=True, null=True) #수업과 다름 null 값 추후 입력안하면 입력하라는 방식으로 만들 예정
    message = models.CharField(max_length=100, null=True)