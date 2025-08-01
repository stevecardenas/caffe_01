from django.shortcuts import render

def Home (request):
    return render(request, 'core/Home.html')

def About (request):
    return render(request, 'core/About.html')

def Store (request):
    return render(request, 'core/Store.html')




