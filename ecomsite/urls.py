from django.contrib import admin
from django.urls import path,include
from .views import home,signup,login,cart,payment,Success,shipping
from .views.login import logout
urlpatterns=[
    path('',home.index.as_view(),name='homepage'),
    path('signup',signup.Signup.as_view(),name='signup'),
    path('login',login.Login.as_view(),name='login'),
    path('logout',logout,name='logout'),
    path('cart',cart.Cart.as_view(),name='cart'),
    path('mypage',shipping.Shipping.as_view(),name='shipping'),
    path('payment',payment.payment.as_view(),name='payment'),
    path('success',Success.Success.as_view(),name='success'),
]