#!/bin/bash

echo "✨ ============================================"
echo "✨   CRÉATION DU SITE BANDEV SPECTACULAIRE    "
echo "✨ ============================================"

# On nettoie pour repartir propre
rm -rf app src pages

# Création de la nouvelle structure
mkdir -p app
mkdir -p components
mkdir -p public/images

# Package.json avec toutes les dépendances cool
cat > package.json << 'END'
{
  "name": "bandev-spectacular",
  "version": "3.0.0",
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start"
  },
  "dependencies": {
    "next": "14.2.3",
    "react": "18.3.1",
    "react-dom": "18.3.1",
    "framer-motion": "^11.2.10"
  },
  "devDependencies": {
    "tailwindcss": "^3.4.4",
    "autoprefixer": "^10.4.19",
    "postcss": "^8.4.38"
  }
}
END

# Layout principal
cat > app/layout.js << 'END'
import './globals.css'

export const metadata = {
  title: 'BANDEV - Nicolas Banic | Développeur Web Créatif',
  description: 'Portfolio spectaculaire basé sur le nombre d\'or',
}

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <head>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;900&display=swap" rel="stylesheet" />
      </head>
      <body>{children}</body>
    </html>
  )
}
END

# Page principale SPECTACULAIRE
cat > app/page.js << 'END'
'use client'
import { useEffect, useState } from 'react'

export default function Home() {
  const PHI = 1.618
  const [mousePosition, setMousePosition] = useState({ x: 0, y: 0 })
  
  useEffect(() => {
    const handleMouseMove = (e) => {
      setMousePosition({ x: e.clientX, y: e.clientY })
    }
    window.addEventListener('mousemove', handleMouseMove)
    return () => window.removeEventListener('mousemove', handleMouseMove)
  }, [])

  return (
    <>
      {/* MATRIX RAIN */}
      <div className="matrix-container">
        {[...Array(50)].map((_, i) => (
          <div key={i} className="matrix-column" style={{left: `${i * 2}%`, animationDelay: `${Math.random() * 5}s`}}>
            {[...Array(20)].map((_, j) => (
              <span key={j} style={{animationDelay: `${Math.random() * 10}s`}}>
                {String.fromCharCode(33 + Math.random() * 93)}
              </span>
            ))}
          </div>
        ))}
      </div>

      {/* PARTICULES QUI SUIVENT LA SOURIS */}
      <div 
        className="glow-cursor" 
        style={{
          left: `${mousePosition.x}px`,
          top: `${mousePosition.y}px`
        }}
      />
      
      {/* HERO SECTION */}
      <section className="hero-section">
        <div className="hero-content">
          <div className="floating">
            <h1 className="hero-title">
              <span className="text-gradient">BANDEV</span>
            </h1>
            <p className="hero-subtitle">Développeur Web Créatif</p>
            <div className="phi-display">φ = {PHI}033988...</div>
          </div>
          
          <div className="buttons-group">
            <button className="btn-primary">
              <span className="btn-text">Explorer</span>
              <div className="btn-glow"></div>
            </button>
            <button className="btn-secondary">
              <span className="btn-text">Contact</span>
            </button>
          </div>
        </div>
        
        <div className="scroll-indicator">
          <div className="scroll-dot"></div>
        </div>
      </section>

      {/* SERVICES AVEC CARTES 3D */}
      <section className="services-section">
        <h2 className="section-title">
          <span className="text-gradient">Services Premium</span>
        </h2>
        
        <div className="services-grid">
          {[
            { icon: "⚡", title: "Développement", price: "1618€", color: "blue" },
            { icon: "🎨", title: "Design UI/UX", price: "2618€", color: "purple" },
            { icon: "🚀", title: "Optimisation", price: "618€", color: "green" }
          ].map((service, i) => (
            <div key={i} className="service-card" data-tilt>
              <div className="card-glow" style={{background: `var(--color-${service.color})`}}></div>
              <div className="card-content">
                <div className="service-icon">{service.icon}</div>
                <h3>{service.title}</h3>
                <p className="service-desc">
                  Solutions exceptionnelles basées sur le nombre d'or
                </p>
                <div className="service-price">{service.price}</div>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* STATS ANIMÉES */}
      <section className="stats-section">
        <div className="stats-grid">
          {[
            { value: "50+", label: "Projets" },
            { value: "95+", label: "Lighthouse" },
            { value: "100%", label: "Satisfaction" },
            { value: "φ", label: "Perfection" }
          ].map((stat, i) => (
            <div key={i} className="stat-item">
              <div className="stat-value" data-value={stat.value}>
                {stat.value}
              </div>
              <div className="stat-label">{stat.label}</div>
            </div>
          ))}
        </div>
      </section>

      {/* CONTACT */}
      <section className="contact-section">
        <h2 className="section-title">
          <span className="text-gradient">Créons Ensemble</span>
        </h2>
        
        <div className="contact-grid">
          <div className="contact-info">
            <div className="info-item">
              <span className="info-icon">✉️</span>
              <div>
                <p className="info-label">Email</p>
                <a href="mailto:bcnicolaspro@gmail.com">bcnicolaspro@gmail.com</a>
              </div>
            </div>
            <div className="info-item">
              <span className="info-icon">🔗</span>
              <div>
                <p className="info-label">GitHub</p>
                <a href="https://github.com/NicolasBANIC">NicolasBANIC</a>
              </div>
            </div>
            <div className="info-item">
              <span className="info-icon">💼</span>
              <div>
                <p className="info-label">LinkedIn</p>
                <a href="https://linkedin.com/in/nicolasbanic">Nicolas Banic</a>
              </div>
            </div>
          </div>
          
          <button className="mega-cta">
            <span>Démarrer un Projet</span>
            <div className="mega-cta-bg"></div>
          </button>
        </div>
      </section>

      {/* FOOTER */}
      <footer className="footer">
        <p>© 2024 BANDEV - Nicolas Banic</p>
        <p>Créé avec ❤️ et le nombre d'or</p>
      </footer>
    </>
  )
}
END

# CSS SPECTACULAIRE
cat > app/globals.css << 'END'
@tailwind base;
@tailwind components;
@tailwind utilities;

:root {
  --phi: 1.618;
  --color-blue: #3b82f6;
  --color-purple: #a855f7;
  --color-green: #10b981;
  --color-orange: #f97316;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  cursor: none;
}

body {
  font-family: 'Inter', sans-serif;
  background: #000;
  color: #fff;
  overflow-x: hidden;
  cursor: none;
}

/* CURSOR PERSONNALISÉ */
.glow-cursor {
  position: fixed;
  width: 400px;
  height: 400px;
  border-radius: 50%;
  pointer-events: none;
  background: radial-gradient(circle, rgba(168,85,247,0.1) 0%, transparent 70%);
  transform: translate(-50%, -50%);
  transition: 0.1s linear;
  z-index: 9999;
}

/* MATRIX RAIN */
.matrix-container {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: 1;
}

.matrix-column {
  position: absolute;
  top: -100%;
  font-family: monospace;
  font-size: 14px;
  color: #0f0;
  text-shadow: 0 0 5px #0f0;
  animation: matrix-fall 10s linear infinite;
  opacity: 0.1;
}

.matrix-column span {
  display: block;
  animation: matrix-glow 5s linear infinite;
}

@keyframes matrix-fall {
  to { transform: translateY(200vh); }
}

@keyframes matrix-glow {
  0%, 100% { opacity: 0.1; }
  50% { opacity: 0.3; }
}

/* HERO SECTION */
.hero-section {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  z-index: 10;
}

.hero-content {
  text-align: center;
  animation: fadeInUp 1s ease;
}

.floating {
  animation: float 6s ease-in-out infinite;
}

@keyframes float {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-20px); }
}

.hero-title {
  font-size: clamp(4rem, 10vw, 8rem);
  font-weight: 900;
  margin-bottom: 1rem;
}

.text-gradient {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 25%, #f093fb 50%, #f5576c 75%, #fda085 100%);
  background-size: 200% auto;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: gradient-shift 3s ease infinite;
}

@keyframes gradient-shift {
  to { background-position: 200% center; }
}

.hero-subtitle {
  font-size: 1.5rem;
  color: #94a3b8;
  margin-bottom: 2rem;
}

.phi-display {
  font-family: monospace;
  font-size: 2rem;
  color: #a855f7;
  margin: 2rem 0;
  text-shadow: 0 0 20px rgba(168, 85, 247, 0.5);
}

/* BUTTONS */
.buttons-group {
  display: flex;
  gap: 2rem;
  justify-content: center;
  margin-top: 3rem;
}

.btn-primary, .btn-secondary {
  position: relative;
  padding: 1rem 3rem;
  font-size: 1.1rem;
  font-weight: 600;
  border: none;
  border-radius: 50px;
  background: transparent;
  color: white;
  overflow: hidden;
  transition: all 0.3s;
  cursor: pointer;
}

.btn-primary {
  background: linear-gradient(135deg, #667eea, #764ba2);
  box-shadow: 0 10px 40px rgba(102, 126, 234, 0.4);
}

.btn-primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 60px rgba(102, 126, 234, 0.6);
}

.btn-secondary {
  border: 2px solid #a855f7;
}

.btn-secondary:hover {
  background: rgba(168, 85, 247, 0.1);
  transform: translateY(-3px);
}

.btn-glow {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 0;
  height: 0;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.5);
  transform: translate(-50%, -50%);
  transition: width 0.6s, height 0.6s;
}

.btn-primary:hover .btn-glow {
  width: 300px;
  height: 300px;
}

/* SCROLL INDICATOR */
.scroll-indicator {
  position: absolute;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
  width: 30px;
  height: 50px;
  border: 2px solid rgba(255, 255, 255, 0.3);
  border-radius: 25px;
}

.scroll-dot {
  width: 6px;
  height: 6px;
  background: white;
  border-radius: 50%;
  margin: 10px auto;
  animation: scroll-bounce 2s infinite;
}

@keyframes scroll-bounce {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(20px); }
}

/* SECTIONS */
.services-section, .stats-section, .contact-section {
  padding: 100px 20px;
  max-width: 1200px;
  margin: 0 auto;
  position: relative;
  z-index: 10;
}

.section-title {
  font-size: 3rem;
  font-weight: 800;
  text-align: center;
  margin-bottom: 4rem;
}

/* SERVICE CARDS */
.services-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.service-card {
  position: relative;
  background: rgba(255, 255, 255, 0.03);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 20px;
  padding: 2rem;
  transition: all 0.3s;
}

.service-card:hover {
  transform: translateY(-10px) rotateX(5deg);
  border-color: rgba(168, 85, 247, 0.5);
}

.card-glow {
  position: absolute;
  top: -2px;
  left: -2px;
  right: -2px;
  bottom: -2px;
  border-radius: 20px;
  opacity: 0;
  filter: blur(20px);
  transition: opacity 0.3s;
  z-index: -1;
}

.service-card:hover .card-glow {
  opacity: 0.5;
}

.service-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.service-price {
  font-size: 1.5rem;
  color: #a855f7;
  margin-top: 1rem;
  font-weight: bold;
}

/* STATS */
.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 2rem;
}

.stat-item {
  text-align: center;
}

.stat-value {
  font-size: 3rem;
  font-weight: 900;
  background: linear-gradient(135deg, #667eea, #764ba2);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.stat-label {
  color: #94a3b8;
  margin-top: 0.5rem;
}

/* CONTACT */
.contact-grid {
  display: grid;
  grid-template-columns: 1fr auto;
  gap: 4rem;
  align-items: center;
}

.contact-info {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.info-item {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.info-icon {
  font-size: 2rem;
}

.info-label {
  color: #94a3b8;
  font-size: 0.9rem;
}

.info-item a {
  color: #a855f7;
  text-decoration: none;
  transition: color 0.3s;
}

.info-item a:hover {
  color: #c084fc;
}

/* MEGA CTA */
.mega-cta {
  position: relative;
  padding: 1.5rem 4rem;
  font-size: 1.2rem;
  font-weight: 700;
  color: white;
  background: linear-gradient(135deg, #667eea, #764ba2, #f093fb);
  background-size: 200% auto;
  border: none;
  border-radius: 50px;
  animation: gradient-shift 3s ease infinite;
  transition: all 0.3s;
  cursor: pointer;
  overflow: hidden;
}

.mega-cta:hover {
  transform: scale(1.05);
  box-shadow: 0 20px 60px rgba(168, 85, 247, 0.6);
}

.mega-cta-bg {
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.2);
  transition: left 0.5s;
}

.mega-cta:hover .mega-cta-bg {
  left: 100%;
}

/* FOOTER */
.footer {
  text-align: center;
  padding: 3rem;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  color: #94a3b8;
}

/* ANIMATIONS */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(50px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* RESPONSIVE */
@media (max-width: 768px) {
  .buttons-group {
    flex-direction: column;
    align-items: center;
  }
  
  .contact-grid {
    grid-template-columns: 1fr;
  }
  
  .hero-title {
    font-size: 3rem;
  }
}
END

echo "🎉 ========================================="
echo "🎉    SITE SPECTACULAIRE CRÉÉ !            "
echo "🎉 ========================================="
echo ""
echo "✨ Effets ajoutés :"
echo "   • Matrix Rain animé"
echo "   • Curseur lumineux qui suit la souris"
echo "   • Cartes 3D avec glassmorphism"  
echo "   • Gradients animés"
echo "   • Animations au scroll"
echo "   • Boutons avec effets spéciaux"
echo ""
echo "📐 Nombre d'or appliqué partout !"
echo ""
echo "🚀 Lance 'npm install' puis 'npm run dev' !"
