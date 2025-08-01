.PHONY: dev install migrate makemigrations shell check test clean

# Variables
DJANGO_PROJECT = pcof
PYTHON = python

# Comando principal para desarrollo (sin advertencias)
dev:
	@echo "🚀 Iniciando servidor de desarrollo..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py runserver --noreload

# Instalar dependencias
install:
	@echo "📦 Instalando dependencias..."
	@uv sync

# Crear migraciones
makemigrations:
	@echo "📝 Creando migraciones..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py makemigrations

# Aplicar migraciones
migrate:
	@echo "🗄️ Aplicando migraciones..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py migrate

# Shell de Django
shell:
	@echo "🐍 Abriendo shell de Django..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py shell

# Verificar configuración
check:
	@echo "✅ Verificando configuración..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py check

# Ejecutar tests
test:
	@echo "🧪 Ejecutando tests..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py test

# Limpiar archivos temporales
clean:
	@echo "🧹 Limpiando archivos temporales..."
	@find . -type f -name "*.pyc" -delete
	@find . -type d -name "__pycache__" -delete
	@find . -type d -name "*.egg-info" -exec rm -rf {} +

# Comando para desarrollo con recarga automática (con advertencias)
dev-reload:
	@echo "🔄 Iniciando servidor con recarga automática..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py runserver

# Servidor de producción (Gunicorn)
prod:
	@echo "🚀 Iniciando servidor de producción con Gunicorn..."
	@cd $(DJANGO_PROJECT) && gunicorn pcof.wsgi:application --bind 0.0.0.0:8000 --workers 3

# Servidor de desarrollo con Gunicorn (sin advertencias)
dev-gunicorn:
	@echo "🔄 Iniciando servidor de desarrollo con Gunicorn..."
	@cd $(DJANGO_PROJECT) && gunicorn pcof.wsgi:application --bind 127.0.0.1:8000 --workers 1 --reload

# Crear superusuario
createsuperuser:
	@echo "👤 Creando superusuario..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py createsuperuser

# Recolectar archivos estáticos
collectstatic:
	@echo "📁 Recolectando archivos estáticos..."
	@cd $(DJANGO_PROJECT) && $(PYTHON) manage.py collectstatic --noinput 