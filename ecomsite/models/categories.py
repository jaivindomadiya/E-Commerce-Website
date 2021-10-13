from django.db import models

class Category(models.Model):
    Name=models.CharField(max_length=100)


    @staticmethod
    def get_all_categories():
        return Category.objects.all()



    def __str__(self):
        return self.Name