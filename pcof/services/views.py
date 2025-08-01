from django.shortcuts import render
from .models import Services

# Create your views here.
def services_view(request):
    services = Services.objects.all()
    return render(request, 'services/Services.html', {'services': services})