from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.hashers import check_password
from ecomsite.models.Customer import Customer
from django.views import View

class Success(View):
    def get(self,request):
        del request.session['cart']
        return render(request,'success.html')