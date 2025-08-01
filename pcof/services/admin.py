from django.contrib import admin
from .models import Services


# Register your models here.
class ServicesAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
    list_display = ('title', 'subtitle', 'created')
    ordering = ('-created',)
    search_fields = ('title', 'subtitle', 'content')
    list_filter = ('created', 'updated')

admin.site.register(Services, ServicesAdmin)