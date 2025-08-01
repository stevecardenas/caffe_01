# 🚀 Guía Completa: Subir Proyecto a GitHub desde Cursor

## 📋 Índice
1. [Preparar el proyecto local](#preparar-el-proyecto-local)
2. [Crear repositorio en GitHub](#crear-repositorio-en-github)
3. [Conectar repositorio local con GitHub](#conectar-repositorio-local-con-github)
4. [Verificar que todo funcione](#verificar-que-todo-funcione)
5. [Comandos para futuras actualizaciones](#comandos-para-futuras-actualizaciones)
6. [Comandos adicionales útiles](#comandos-adicionales-útiles)
7. [Situaciones comunes y soluciones](#situaciones-comunes-y-soluciones)

---

## 📁 Preparar el proyecto local

### Verificar el estado de Git
```bash
git status
```

### Agregar todos los archivos nuevos/modificados
```bash
git add .
```

### Hacer commit con un mensaje descriptivo
```bash
git commit -m "feat: descripción de los cambios realizados"
```

---

## 🌐 Crear repositorio en GitHub

### Paso a paso:

1. **Ve a GitHub.com** y inicia sesión
2. **Haz clic en el botón "+"** en la esquina superior derecha
3. **Selecciona "New repository"**
4. **Configura el repositorio:**
   - **Repository name**: Nombre de tu proyecto (ej: `mi-proyecto`)
   - **Description**: Descripción opcional
   - **Visibility**: Público o privado
   - **NO marques** "Add a README file" (si ya tienes archivos)
   - **NO marques** "Add .gitignore" (si ya tienes uno)
5. **Haz clic en "Create repository"**

---

## 🔗 Conectar repositorio local con GitHub

### Agregar el repositorio remoto
```bash
git remote add origin https://github.com/TU_USUARIO/NOMBRE_REPO.git
```

### Cambiar la rama principal a 'main'
```bash
git branch -M main
```

### Subir el código por primera vez
```bash
git push -u origin main
```

---

## ✅ Verificar que todo funcione

### Verificar que el remote está configurado correctamente
```bash
git remote -v
```

### Verificar el estado
```bash
git status
```

---

## 🔄 Comandos para futuras actualizaciones

Una vez conectado, para futuros cambios:

### Ver qué archivos han cambiado
```bash
git status
```

### Agregar cambios
```bash
git add .                    # Todos los archivos
# O
git add archivo-especifico   # Archivo específico
```

### Hacer commit
```bash
git commit -m "descripción clara de los cambios"
```

### Subir a GitHub
```bash
git push
```

---

## 📝 Ejemplos de mensajes de commit útiles

```bash
git commit -m "feat: agregar nueva funcionalidad de login"
git commit -m "fix: corregir error en validación de formulario"
git commit -m "docs: actualizar documentación del proyecto"
git commit -m "style: mejorar diseño de la interfaz"
git commit -m "refactor: reorganizar estructura del código"
```

---

## 🛠️ Comandos adicionales útiles

### Ver historial de commits
```bash
git log --oneline
```

### Ver diferencias antes de hacer commit
```bash
git diff
```

### Descartar cambios en un archivo
```bash
git checkout -- nombre-archivo
```

### Crear nueva rama
```bash
git checkout -b nombre-nueva-rama
```

### Cambiar entre ramas
```bash
git checkout nombre-rama
```

### Ver todas las ramas
```bash
git branch -a
```

### Eliminar rama local
```bash
git branch -d nombre-rama
```

---

## ⚠️ Situaciones comunes y soluciones

### Si el repositorio ya existe
```bash
# En lugar de 'add origin', usa 'set-url'
git remote set-url origin https://github.com/USUARIO/REPO.git
```

### Si hay conflictos
```bash
# Actualizar repositorio local
git pull origin main

# Resolver conflictos manualmente, luego:
git add .
git commit -m "resolve: conflictos"
git push
```

### Si olvidaste hacer commit
```bash
# Ver qué archivos están sin commit
git status

# Agregar y hacer commit
git add .
git commit -m "descripción"
git push
```

### Si necesitas revertir el último commit
```bash
git reset --soft HEAD~1
```

### Si necesitas ver qué cambios hay en un archivo
```bash
git diff nombre-archivo
```

---

## 🎯 Resumen rápido para la próxima vez

1. **Crear repo en GitHub** → Copiar URL
2. **`git add .`** → Agregar archivos
3. **`git commit -m "mensaje"`** → Hacer commit
4. **`git remote add origin URL`** → Conectar (solo primera vez)
5. **`git push -u origin main`** → Subir (solo primera vez)
6. **`git push`** → Para futuras actualizaciones

---

## 📚 Recursos adicionales

- [Documentación oficial de Git](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

---

## 🆘 Comandos de emergencia

### Si algo sale mal y quieres empezar de nuevo
```bash
# Eliminar el remote
git remote remove origin

# Volver a agregar
git remote add origin https://github.com/USUARIO/REPO.git
```

### Si necesitas forzar un push (¡CUIDADO!)
```bash
git push --force origin main
```

### Si necesitas clonar un repositorio existente
```bash
git clone https://github.com/USUARIO/REPO.git
```

---

**¡Con esta guía ya puedes subir cualquier proyecto a GitHub de forma independiente! 🚀** 