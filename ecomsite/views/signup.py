from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.hashers import make_password
from ecomsite.models.Customer import Customer
from django.views import View

class Signup(View):
    def get(self,request):
        return render(request,'signup.html')
    def post(self,request):
        regdata=request.POST
        fname=regdata.get('first_name')
        lname=regdata.get('last_name')
        mail=regdata.get('email')
        passw=regdata.get('password')
        value={
                'first_name':fname,
                'last_name':lname,
                'email':mail,
                'password':passw,
            }
        customer=Customer(first_name=fname,last_name=lname,email=mail,password=passw)
        error_mess=self.validate(customer)
        if not error_mess:
            customer.password=make_password(customer.password)
            customer.save()
            messages.success(request,('Registration Successfull!!'))
            return redirect('/')
        else:
            data={
                'error':error_mess,
                'values':value,
            }
        return render(request,'signup.html',data)
    def validate(self,customer):
        error_mess=None
        if not customer.first_name:
            error_mess="First Name is required"
        elif not customer.last_name:
            error_mess="Last Name is required"
        elif not customer.email:
            error_mess="Email is required"
        elif not customer.password:
            error_mess="Password is required"
        elif len(customer.password)<6:
            error_mess="Please Enter at least 6 digit Password"
        elif not any(ele.isupper() for ele in customer.password):
            error_mess="Your Password must contain a captial letter"
        elif customer.check_email():
            error_mess="Provided Email-ID is already Registered please enter new email ID!"
        return error_mess
