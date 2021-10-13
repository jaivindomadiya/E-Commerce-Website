from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.hashers import check_password
from ecomsite.models.Customer import Customer
from django.views import View
from .login import Login
class payment(View):
    def get(self,request):
        customer=request.session.get('customer_id')
        b=True
        if not customer:
            b=False
        return render(request,'payment.html',{'customer':b})