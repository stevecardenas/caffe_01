from django.shortcuts import render
from .models import Post
# Create your views here.
def Blog (request):
    posts = Post.objects.all()
    return render(request, 'blog/Blog.html', {'posts': posts})