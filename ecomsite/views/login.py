from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.hashers import check_password
from ecomsite.models.Customer import Customer
from django.views import View

class Login(View):
    def get(self,request):
        return render(request,'Login.html')
    def post(self,request):
        email=request.POST.get('email')
        password=request.POST.get('password')
        customer=Customer.get_customer_by_email(email)
        error_message=None
        if customer:
            flag=check_password(password,customer.password)
            if flag:
                request.session['customer_id']=customer.id
                return redirect('/')
            else:
                error_message="Email or Password is Invalid!"
        else:
            error_message="Email or Password is Invalid!"
        return render(request,'Login.html',{'error':error_message})
def logout(request):
    request.session.clear()
    return redirect('login')