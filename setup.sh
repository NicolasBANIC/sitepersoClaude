#!/bin/bash

echo "=============================="
echo "   CRÉATION SITE BANDEV       "
echo "=============================="

mkdir -p app
mkdir -p public

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

cat > next.config.js << 'END'
module.exports = {
  reactStrictMode: true,
}
END

cat > tailwind.config.js << 'END'
module.exports = {
  content: ['./app/**/*.{js,jsx}'],
  theme: {
    extend: {}
  },
  plugins: [],
}
END

cat > postcss.config.js << 'END'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
END

cat > .gitignore << 'END'
node_modules
.next
END

cat > app/layout.js << 'END'
export const metadata = {
  title: 'BANDEV',
}

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <body>{children}</body>
    </html>
  )
}
END

cat > app/globals.css << 'END'
@tailwind base;
@tailwind components;
@tailwind utilities;

body {
  background: #0a0e1a;
  color: white;
}
END

cat > app/page.js << 'END'
import './globals.css'

export default function Home() {
  return (
    <main className="min-h-screen flex items-center justify-center">
      <div className="text-center">
        <h1 className="text-6xl font-bold mb-4">BANDEV</h1>
        <p className="text-xl mb-8">Développeur Web</p>
        <p className="text-3xl mb-12">φ = 1.618</p>
        <a href="mailto:bcnicolaspro@gmail.com" className="px-6 py-3 bg-blue-500 rounded">
          Contact
        </a>
      </div>
    </main>
  )
}
END

echo "✅ Fichiers créés !"EOF

