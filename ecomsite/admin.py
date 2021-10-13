from django.contrib import admin
from .models.Product import Product
from .models.categories import Category
from .models.Customer import Customer
# Register your models here.
class AdminProduct(admin.ModelAdmin):
    list_display=['Name','price','fk']
class AdminCategory(admin.ModelAdmin):
    list_display=['Name']
class AdminCustomer(admin.ModelAdmin):
    list_display=['first_name','last_name','email','password']
    
admin.site.register(Product,AdminProduct)
admin.site.register(Category,AdminCategory)
admin.site.register(Customer,AdminCustomer)