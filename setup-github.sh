#!/bin/bash

# Script d'aide pour initialiser Git et préparer la publication sur GitHub Pages
# Usage: ./setup-github.sh

echo "🚀 Configuration Git pour GitHub Pages"
echo ""

# Vérifier si Git est installé
if ! command -v git &> /dev/null; then
    echo "❌ Git n'est pas installé. Veuillez l'installer d'abord."
    exit 1
fi

# Vérifier si déjà un dépôt Git
if [ -d ".git" ]; then
    echo "⚠️  Un dépôt Git existe déjà."
    read -p "Voulez-vous continuer ? (o/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Oo]$ ]]; then
        exit 1
    fi
fi

# Initialiser Git si nécessaire
if [ ! -d ".git" ]; then
    echo "📦 Initialisation du dépôt Git..."
    git init
fi

# Ajouter tous les fichiers
echo "📝 Ajout des fichiers..."
git add .

# Créer le premier commit
echo "💾 Création du commit initial..."
git commit -m "Initial commit - Site vitrine pizzeria"

echo ""
echo "✅ Dépôt Git initialisé avec succès !"
echo ""
echo "📋 Prochaines étapes :"
echo "1. Créez un nouveau dépôt sur GitHub.com"
echo "2. Exécutez ces commandes (remplacez USERNAME et REPO_NAME) :"
echo ""
echo "   git remote add origin https://github.com/USERNAME/REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Activez GitHub Pages dans les paramètres du dépôt"
echo ""
echo "📖 Consultez GITHUB_PAGES.md pour les instructions détaillées"

