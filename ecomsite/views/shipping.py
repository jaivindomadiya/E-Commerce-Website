from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.hashers import check_password
from ecomsite.models.Customer import Customer
from django.views import View
from .login import Login

class Shipping(View):
    def get(self,request):
        return render(request,'shipping.html')