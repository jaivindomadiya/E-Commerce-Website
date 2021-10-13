from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.hashers import check_password
from ecomsite.models.Product import Product
from django.views import View

class Cart(View):
    def get(self,request):
        if request.session.get('cart'):
            ids=list(request.session.get('cart').keys())
            products=Product.get_product_by_id(ids)
            return render(request,'cart.html',{'products':products})
        return render(request,'cart.html',{'products':0})