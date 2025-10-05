#!/bin/bash

echo "CRÉATION DU SITE BANDEV"

# Nettoie les anciens fichiers
rm -rf app

# Crée le dossier app
mkdir -p app

# Crée package.json
cat > package.json << 'END'
{
  "name": "bandev",
  "version": "1.0.0",
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "14.2.3",
    "react": "18.3.1",
    "react-dom": "18.3.1"
  },
  "devDependencies": {
    "tailwindcss": "3.4.4",
    "autoprefixer": "10.4.19",
    "postcss": "8.4.38"
  }
}
END

# Crée app/layout.js
cat > app/layout.js << 'END'
export const metadata = {
  title: 'BANDEV',
  description: 'Site de Nicolas',
}

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <body>{children}</body>
    </html>
  )
}
END

# Crée app/globals.css
cat > app/globals.css << 'END'
@tailwind base;
@tailwind components;
@tailwind utilities;

body {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  min-height: 100vh;
}
END

# Crée app/page.js
cat > app/page.js << 'END'
import './globals.css'

export default function Home() {
  return (
    <main className="min-h-screen flex items-center justify-center p-8">
      <div className="text-center">
        <h1 className="text-8xl font-bold mb-8">BANDEV</h1>
        <p className="text-2xl mb-4">Développeur Web</p>
        <p className="text-4xl mb-8">φ = 1.618</p>
        <div className="space-y-4">
          <p>✉️ bcnicolaspro@gmail.com</p>
          <p>🔗 github.com/NicolasBANIC</p>
        </div>
      </div>
    </main>
  )
}
END

echo "✅ Site créé avec succès !"
