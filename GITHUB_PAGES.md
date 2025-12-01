# 📦 Guide de publication sur GitHub Pages

Ce guide vous explique comment publier ce site sur GitHub Pages étape par étape.

## Prérequis

- Un compte GitHub
- Git installé sur votre machine

## Étapes de publication

### 1. Créer un nouveau dépôt sur GitHub

1. Allez sur [GitHub.com](https://github.com) et connectez-vous
2. Cliquez sur le bouton **"+"** en haut à droite, puis **"New repository"**
3. Donnez un nom à votre dépôt (ex: `demo-site-vitrine-pizzeria`)
4. Choisissez **Public** (GitHub Pages gratuit nécessite un dépôt public)
5. **Ne cochez PAS** "Initialize this repository with a README"
6. Cliquez sur **"Create repository"**

### 2. Initialiser Git et pousser le code

Ouvrez un terminal dans le dossier du projet et exécutez ces commandes :

```bash
# Initialiser Git
git init

# Ajouter tous les fichiers
git add .

# Créer le premier commit
git commit -m "Initial commit - Site vitrine pizzeria"

# Ajouter le dépôt distant (remplacez USERNAME et REPO_NAME)
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Renommer la branche principale en 'main' (si nécessaire)
git branch -M main

# Pousser le code sur GitHub
git push -u origin main
```

**Important :** Remplacez `USERNAME` par votre nom d'utilisateur GitHub et `REPO_NAME` par le nom de votre dépôt.

### 3. Activer GitHub Pages

1. Allez sur votre dépôt GitHub
2. Cliquez sur **"Settings"** (Paramètres) en haut du dépôt
3. Dans le menu de gauche, cliquez sur **"Pages"**
4. Sous **"Source"**, sélectionnez **"Deploy from a branch"**
5. Choisissez la branche **"main"** et le dossier **"/ (root)"**
6. Cliquez sur **"Save"**

### 4. Accéder à votre site

Votre site sera disponible à l'adresse :
```
https://USERNAME.github.io/REPO_NAME/
```

**Note :** Il peut falloir quelques minutes pour que le site soit accessible la première fois.

## 🔧 Mettre à jour les URLs Open Graph

Une fois votre site publié, mettez à jour les URLs dans `index.html` :

1. Ouvrez `index.html`
2. Remplacez les chemins relatifs des images Open Graph par des URLs absolues :
   - `og:image` : `https://USERNAME.github.io/REPO_NAME/pizzaiolo-avec-son-four.jpeg`
   - `twitter:image` : `https://USERNAME.github.io/REPO_NAME/pizzaiolo-avec-son-four.jpeg`
   - `og:url` : `https://USERNAME.github.io/REPO_NAME/`

3. Commitez et poussez les modifications :
```bash
git add index.html
git commit -m "Mise à jour des URLs Open Graph"
git push
```

## 📝 Mises à jour futures

Pour mettre à jour le site après des modifications :

```bash
git add .
git commit -m "Description de vos modifications"
git push
```

Les modifications seront automatiquement déployées sur GitHub Pages en quelques minutes.

## 🐛 Dépannage

- **Le site ne s'affiche pas :** Vérifiez que la branche "main" est bien sélectionnée dans les paramètres Pages
- **Les images ne s'affichent pas :** Vérifiez que tous les fichiers images sont bien dans le dépôt
- **Erreur 404 :** Assurez-vous que le fichier s'appelle bien `index.html` à la racine

## 💡 Astuce

Vous pouvez aussi utiliser un nom de dépôt spécial pour avoir une URL personnalisée :
- Dépôt nommé `USERNAME.github.io` → Site accessible sur `https://USERNAME.github.io`

