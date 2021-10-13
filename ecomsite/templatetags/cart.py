from django import template
from django.shortcuts import redirect
register=template.Library()
@register.filter(name='is_in_cart')
def is_in_cart(product,cart):
  keys=cart.keys()
  for id in keys:  
    if int_or_0(id)==product.id:
        return True
  return False

@register.filter(name='cart_quantity')
def cart_quantity(product,cart):
    keys=cart.keys()
    for id in keys:
        if int_or_0(id)==product.id:
            return cart.get(id)
    return 0
@register.filter(name='total_price')
def total_price(product,cart):
    return product.price*cart_quantity(product,cart)

@register.filter(name='total_cart_price')
def total_cart_price(product,cart):
    sum=0
    for p in product:
        sum+=total_price(p,cart)
    return sum

@register.filter(name='redirect_to_homepage')
def redirect_to_homepage(product,cart):
    sleep(2)
    return redirect('/')

def int_or_0(value):
    try:
        return int(value)
    except:
        return 0
    