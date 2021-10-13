from django.db import models
from .categories import Category
# Create your models here.
class Product(models.Model):
    Name=models.CharField(max_length=100)
    price=models.IntegerField(default=0)
    fk=models.ForeignKey(Category,on_delete=models.CASCADE,default=1)
    Description=models.CharField(max_length=200,default='')
    Image=models.ImageField(upload_to='uploads/products/')
    @staticmethod
    def get_product_by_id(ids):
        return Product.objects.filter(id__in=ids)
    @staticmethod
    def get_all_Products():
        return Product.objects.all()
    @staticmethod
    def get_all_Products_byid(fk_id):
        if fk_id:
            return Product.objects.filter(fk=fk_id)
        else:
            return Product.get_all_Products()