#!/bin/bash

echo "🌟 ======================================"
echo "🌟   CRÉATION DU SITE BANDEV COMPLET    "
echo "🌟      AVEC TOUS LES EFFETS !          "
echo "🌟 ======================================"

# Création de la page principale COMPLÈTE
cat > app/page.js << 'END'
import './globals.css'

export default function Home() {
  const PHI = 1.618033988749895;
  
  return (
    <>
      {/* Matrix Rain Effect */}
      <div className="matrix-rain"></div>
      
      {/* Particles Background */}
      <div className="particles"></div>
      
      <main className="min-h-screen relative z-10">
        {/* Hero Section */}
        <section className="min-h-screen flex items-center justify-center p-8">
          <div className="text-center space-y-8 animate-fadeIn">
            <h1 className="text-6xl md:text-8xl font-black">
              <span className="bg-gradient-to-r from-blue-500 via-purple-500 to-orange-500 bg-clip-text text-transparent animate-gradient">
                BANDEV
              </span>
            </h1>
            
            <p className="text-xl md:text-2xl text-gray-300">
              Développeur Web Créatif
            </p>
            
            <div className="text-3xl md:text-4xl font-mono text-purple-400 animate-pulse">
              φ = {PHI.toFixed(3)}...
            </div>
            
            <p className="text-lg text-gray-400 max-w-2xl mx-auto">
              Création de sites web exceptionnels basés sur le nombre d'or 
              pour une harmonie visuelle parfaite
            </p>
            
            <div className="flex gap-4 justify-center">
              <a 
                href="#services"
                className="px-8 py-4 bg-gradient-to-r from-blue-500 to-purple-600 text-white font-bold rounded-lg hover:scale-105 transition-all duration-300 shadow-lg hover:shadow-purple-500/50"
              >
                Découvrir
              </a>
              <a 
                href="#contact"
                className="px-8 py-4 border-2 border-purple-500 text-purple-400 font-bold rounded-lg hover:bg-purple-500/20 transition-all duration-300"
              >
                Contact
              </a>
            </div>
          </div>
          
          <div className="absolute bottom-10 left-1/2 transform -translate-x-1/2 animate-bounce">
            <svg className="w-6 h-6 text-purple-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 14l-7 7m0 0l-7-7m7 7V3" />
            </svg>
          </div>
        </section>
        
        {/* Services Section */}
        <section id="services" className="min-h-screen p-8 flex items-center">
          <div className="max-w-6xl mx-auto w-full">
            <h2 className="text-4xl md:text-6xl font-bold text-center mb-16">
              <span className="bg-gradient-to-r from-blue-500 to-purple-500 bg-clip-text text-transparent">
                Services Premium
              </span>
            </h2>
            
            <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
              <div className="glass-card p-8 hover:scale-105 transition-all duration-300">
                <div className="text-4xl mb-4">⚡</div>
                <h3 className="text-2xl font-bold mb-4">Développement Web</h3>
                <p className="text-gray-300">
                  Sites web modernes avec React, Next.js et Node.js. 
                  Performance optimale garantie.
                </p>
                <div className="mt-4 text-purple-400 font-mono">
                  À partir de 1618€
                </div>
              </div>
              
              <div className="glass-card p-8 hover:scale-105 transition-all duration-300">
                <div className="text-4xl mb-4">🎨</div>
                <h3 className="text-2xl font-bold mb-4">Design UI/UX</h3>
                <p className="text-gray-300">
                  Interfaces harmonieuses basées sur le nombre d'or. 
                  Expérience utilisateur parfaite.
                </p>
                <div className="mt-4 text-purple-400 font-mono">
                  À partir de 2618€
                </div>
              </div>
              
              <div className="glass-card p-8 hover:scale-105 transition-all duration-300">
                <div className="text-4xl mb-4">🚀</div>
                <h3 className="text-2xl font-bold mb-4">Optimisation</h3>
                <p className="text-gray-300">
                  Score Lighthouse 95+, SEO optimal, 
                  et temps de chargement minimal.
                </p>
                <div className="mt-4 text-purple-400 font-mono">
                  À partir de 618€
                </div>
              </div>
            </div>
          </div>
        </section>
        
        {/* Portfolio Section */}
        <section className="min-h-screen p-8 flex items-center">
          <div className="max-w-6xl mx-auto w-full">
            <h2 className="text-4xl md:text-6xl font-bold text-center mb-16">
              <span className="bg-gradient-to-r from-purple-500 to-orange-500 bg-clip-text text-transparent">
                Portfolio
              </span>
            </h2>
            
            <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
              <div className="glass-card overflow-hidden group">
                <div className="h-48 bg-gradient-to-br from-blue-500 to-purple-500 opacity-50"></div>
                <div className="p-6">
                  <h3 className="text-xl font-bold mb-2">E-Commerce Platform</h3>
                  <p className="text-gray-400 mb-4">Plateforme complète avec paiement Stripe</p>
                  <div className="flex gap-2">
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">React</span>
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">Node.js</span>
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">MongoDB</span>
                  </div>
                </div>
              </div>
              
              <div className="glass-card overflow-hidden group">
                <div className="h-48 bg-gradient-to-br from-purple-500 to-orange-500 opacity-50"></div>
                <div className="p-6">
                  <h3 className="text-xl font-bold mb-2">SaaS Dashboard</h3>
                  <p className="text-gray-400 mb-4">Interface d'administration moderne</p>
                  <div className="flex gap-2">
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">Next.js</span>
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">TypeScript</span>
                    <span className="px-3 py-1 bg-purple-500/20 text-purple-400 rounded text-sm">Tailwind</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        
        {/* Stats Section */}
        <section className="p-8">
          <div className="max-w-6xl mx-auto">
            <div className="grid grid-cols-1 md:grid-cols-4 gap-8">
              <div className="text-center">
                <div className="text-4xl font-bold text-purple-400">50+</div>
                <div className="text-gray-400">Projets</div>
              </div>
              <div className="text-center">
                <div className="text-4xl font-bold text-purple-400">95+</div>
                <div className="text-gray-400">Score Lighthouse</div>
              </div>
              <div className="text-center">
                <div className="text-4xl font-bold text-purple-400">100%</div>
                <div className="text-gray-400">Satisfaction</div>
              </div>
              <div className="text-center">
                <div className="text-4xl font-bold text-purple-400">24/7</div>
                <div className="text-gray-400">Support</div>
              </div>
            </div>
          </div>
        </section>
        
        {/* Contact Section */}
        <section id="contact" className="min-h-screen p-8 flex items-center">
          <div className="max-w-4xl mx-auto w-full">
            <h2 className="text-4xl md:text-6xl font-bold text-center mb-16">
              <span className="bg-gradient-to-r from-orange-500 to-purple-500 bg-clip-text text-transparent">
                Créons Ensemble
              </span>
            </h2>
            
            <div className="glass-card p-8">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                <div>
                  <h3 className="text-2xl font-bold mb-4">Contactez-moi</h3>
                  <div className="space-y-4">
                    <div className="flex items-center gap-4">
                      <span className="text-2xl">✉️</span>
                      <div>
                        <p className="text-sm text-gray-400">Email</p>
                        <a href="mailto:bcnicolaspro@gmail.com" className="text-purple-400 hover:text-purple-300">
                          bcnicolaspro@gmail.com
                        </a>
                      </div>
                    </div>
                    <div className="flex items-center gap-4">
                      <span className="text-2xl">📍</span>
                      <div>
                        <p className="text-sm text-gray-400">Localisation</p>
                        <p>France</p>
                      </div>
                    </div>
                    <div className="flex items-center gap-4">
                      <span className="text-2xl">💼</span>
                      <div>
                        <p className="text-sm text-gray-400">Disponibilité</p>
                        <p className="text-green-400">Disponible pour projets</p>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div>
                  <h3 className="text-2xl font-bold mb-4">Réseaux</h3>
                  <div className="space-y-4">
                    <a 
                      href="https://github.com/NicolasBANIC" 
                      className="flex items-center gap-4 hover:text-purple-400 transition-colors"
                      target="_blank"
                    >
                      <span className="text-2xl">🐙</span>
                      <span>GitHub</span>
                    </a>
                    <a 
                      href="https://linkedin.com/in/nicolasbanic" 
                      className="flex items-center gap-4 hover:text-purple-400 transition-colors"
                      target="_blank"
                    >
                      <span className="text-2xl">💼</span>
                      <span>LinkedIn</span>
                    </a>
                    <a 
                      href="https://bandev.fr" 
                      className="flex items-center gap-4 hover:text-purple-400 transition-colors"
                      target="_blank"
                    >
                      <span className="text-2xl">🌐</span>
                      <span>Site Web</span>
                    </a>
                  </div>
                </div>
              </div>
              
              <div className="mt-8 text-center">
                <a 
                  href="mailto:bcnicolaspro@gmail.com"
                  className="inline-block px-8 py-4 bg-gradient-to-r from-purple-500 to-orange-500 text-white font-bold rounded-lg hover:scale-105 transition-all duration-300 shadow-lg hover:shadow-purple-500/50"
                >
                  Démarrer un Projet
                </a>
              </div>
            </div>
          </div>
        </section>
        
        {/* Footer */}
        <footer className="text-center p-8 text-gray-400 border-t border-gray-800">
          <p className="text-lg mb-2">© 2024 BANDEV - Nicolas Banic</p>
          <p className="text-sm">SIRET : 841 375 652 00028</p>
          <p className="text-sm mt-4">
            Créé avec <span className="text-red-500">❤️</span> et le nombre d'or <span className="text-purple-400">φ = 1.618</span>
          </p>
        </footer>
      </main>
    </>
  )
}
END

# Création du CSS COMPLET avec effets
cat > app/globals.css << 'END'
@tailwind base;
@tailwind components;
@tailwind utilities;

:root {
  --phi: 1.618;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: linear-gradient(135deg, #0a0e1a 0%, #1a1f36 50%, #0a0e1a 100%);
  color: white;
  min-height: 100vh;
  overflow-x: hidden;
}

/* Matrix Rain Effect */
.matrix-rain {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  opacity: 0.1;
  z-index: 1;
  background-image: 
    repeating-linear-gradient(
      0deg,
      transparent,
      transparent 2px,
      rgba(0, 255, 0, 0.03) 2px,
      rgba(0, 255, 0, 0.03) 4px
    );
  animation: matrix-fall 20s linear infinite;
}

@keyframes matrix-fall {
  to {
    transform: translateY(100vh);
  }
}

/* Particles */
.particles {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: 2;
}

.particles::before,
.particles::after {
  content: '';
  position: absolute;
  width: 2px;
  height: 2px;
  background: white;
  box-shadow: 
    100px 100px 0 rgba(255,255,255,0.5),
    200px 200px 0 rgba(255,255,255,0.3),
    300px 50px 0 rgba(255,255,255,0.6),
    400px 300px 0 rgba(255,255,255,0.4),
    500px 150px 0 rgba(255,255,255,0.7),
    600px 250px 0 rgba(255,255,255,0.3),
    700px 100px 0 rgba(255,255,255,0.5),
    800px 350px 0 rgba(255,255,255,0.4);
  animation: float 50s infinite linear;
}

.particles::after {
  animation-delay: 25s;
  left: 50px;
}

@keyframes float {
  to {
    transform: translateX(-100vw) translateY(-100vh);
  }
}

/* Glass Card */
.glass-card {
  background: rgba(255, 255, 255, 0.05);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  box-shadow: 0 8px 32px 0 rgba(99, 102, 241, 0.1);
}

.glass-card:hover {
  background: rgba(255, 255, 255, 0.08);
  border-color: rgba(99, 102, 241, 0.3);
}

/* Gradient Animation */
.animate-gradient {
  background-size: 200% auto;
  animation: gradient 8s ease infinite;
}

@keyframes gradient {
  0% { background-position: 0% center; }
  50% { background-position: 100% center; }
  100% { background-position: 0% center; }
}

/* Fade In Animation */
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fadeIn {
  animation: fadeIn 1s ease-out;
}

/* Smooth Scroll */
html {
  scroll-behavior: smooth;
}

/* Custom Scrollbar */
::-webkit-scrollbar {
  width: 10px;
}

::-webkit-scrollbar-track {
  background: #0a0e1a;
}

::-webkit-scrollbar-thumb {
  background: linear-gradient(135deg, #6366f1, #a855f7);
  border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
  background: linear-gradient(135deg, #818cf8, #c084fc);
}
END

echo "✅ Site COMPLET créé avec tous les effets !"
echo "🎨 Matrix Rain ajouté !"
echo "✨ Particules ajoutées !"
echo "🌟 Glassmorphism ajouté !"
echo "📐 Nombre d'or appliqué partout !"
echo ""
echo "🚀 Lance 'npm run dev' pour voir le résultat !"
