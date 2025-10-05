#!/bin/bash

echo "🔄 ========================================="
echo "🔄  RÉCUPÉRATION ET AMÉLIORATION DU SITE   "
echo "🔄 ========================================="

# On télécharge ton ancien site dans un dossier temporaire
echo "📥 Téléchargement de ton site original..."
git clone https://github.com/NicolasBANIC/siteperso.git temp_siteperso

echo "📦 Copie des fichiers importants..."

# On copie les fichiers de configuration de l'ancien site
cp temp_siteperso/package.json package.json 2>/dev/null || echo "package.json non trouvé"
cp temp_siteperso/next.config.js next.config.js 2>/dev/null || echo "next.config.js non trouvé"
cp temp_siteperso/tailwind.config.js tailwind.config.js 2>/dev/null || echo "tailwind.config.js non trouvé"
cp temp_siteperso/postcss.config.js postcss.config.js 2>/dev/null || echo "postcss.config.js non trouvé"
cp temp_siteperso/tsconfig.json tsconfig.json 2>/dev/null || echo "tsconfig.json non trouvé"
cp temp_siteperso/.env.local.example .env.local.example 2>/dev/null || echo ".env.local.example non trouvé"
cp temp_siteperso/README.md README_original.md 2>/dev/null || echo "README non trouvé"

# On copie les dossiers
echo "📁 Copie des dossiers..."
cp -r temp_siteperso/src src 2>/dev/null || echo "Dossier src non trouvé"
cp -r temp_siteperso/app app 2>/dev/null || echo "Dossier app non trouvé"  
cp -r temp_siteperso/components components 2>/dev/null || echo "Dossier components non trouvé"
cp -r temp_siteperso/lib lib 2>/dev/null || echo "Dossier lib non trouvé"
cp -r temp_siteperso/public public 2>/dev/null || echo "Dossier public non trouvé"
cp -r temp_siteperso/styles styles 2>/dev/null || echo "Dossier styles non trouvé"

# On nettoie
echo "🧹 Nettoyage..."
rm -rf temp_siteperso

# Si on n'a pas de structure app, on la crée
if [ ! -d "app" ] && [ ! -d "src" ]; then
  echo "⚠️ Structure non trouvée, création d'une structure de base..."
  mkdir -p app
  mkdir -p components
  mkdir -p public
fi

# On s'assure d'avoir au minimum les fichiers essentiels
if [ ! -f "package.json" ]; then
  echo "📝 Création d'un package.json amélioré..."
  cat > package.json << 'END'
{
  "name": "bandev-golden-site",
  "version": "2.0.0",
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "14.2.3",
    "react": "18.3.1",
    "react-dom": "18.3.1",
    "framer-motion": "^11.2.10",
    "three": "^0.165.0",
    "@react-three/fiber": "^8.16.8",
    "@react-three/drei": "^9.108.3"
  },
  "devDependencies": {
    "typescript": "^5.4.5",
    "tailwindcss": "^3.4.4",
    "autoprefixer": "^10.4.19",
    "postcss": "^8.4.38",
    "@types/react": "^18.3.3",
    "@types/node": "^20.14.2"
  }
}
END
fi

echo "✅ Fichiers récupérés !"
echo ""
echo "🎨 Maintenant, lance ces commandes :"
echo "   1. npm in
