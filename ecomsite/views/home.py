from django.shortcuts import render,redirect
from ecomsite.models.Product import Product
from ecomsite.models.categories import Category
from django.views import View
# Create your views here.
class index(View):
    def get(self,request):
        cart=request.session.get('cart')
        if not cart:
            request.session.cart={}
        product=None
        category=Category.get_all_categories()
        category_id=request.GET.get('category')
        if category_id:
            product= Product.get_all_Products_byid(category_id)
        else:
            product= Product.get_all_Products()
        data={}
        data['products']=product
        data['categories']=category
        return render(request,'index.html',data)
    def post(self,request):
        product=request.POST.get('product')
        remove=request.POST.get('remove')
        cart=request.session.get('cart')
        if cart:
            quantity=cart.get(product)
            if quantity:
                if remove:
                    if quantity<=1:
                        cart.pop(product)
                    else:
                        cart[product]=quantity-1
                else:
                    cart[product]=quantity+1
            else:
                cart[product]=1
        else:
            cart={}
            cart[product]=1
        request.session['cart']=cart
        print('cart',request.session['cart'])
        return redirect('homepage')
    