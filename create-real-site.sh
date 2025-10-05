#!/bin/bash

echo "CRÉATION DU VRAI SITE SPECTACULAIRE"

# Package.json avec les bonnes dépendances
cat > package.json << 'END'
{
  "name": "bandev-spectacular",
  "version": "1.0.0",
  "scripts": {
    "dev": "next dev",
    "build": "next build"
  },
  "dependencies": {
    "next": "14.2.3",
    "react": "18.3.1",
    "react-dom": "18.3.1"
  }
}
END

# Layout
cat > app/layout.js << 'END'
export const metadata = {
  title: 'BANDEV - Nicolas Banic | Développeur Web',
  description: 'Portfolio spectaculaire avec effets visuels',
}

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <head>
        <style>{`
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body { overflow-x: hidden; }
        `}</style>
      </head>
      <body>{children}</body>
    </html>
  )
}
END

# Page avec TOUS les effets
cat > app/page.js << 'END'
'use client'
import { useEffect, useRef } from 'react'
import './style.css'

export default function Home() {
  const canvasRef = useRef(null)
  
  useEffect(() => {
    // MATRIX RAIN
    const canvas = canvasRef.current
    const ctx = canvas.getContext('2d')
    canvas.width = window.innerWidth
    canvas.height = window.innerHeight
    
    const matrix = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789@#$%^&*()*&^%+-/~{[|`]}'.split('')
    const fontSize = 10
    const columns = canvas.width / fontSize
    const drops = []
    
    for(let x = 0; x < columns; x++) {
      drops[x] = 1
    }
    
    function draw() {
      ctx.fillStyle = 'rgba(0, 0, 0, 0.04)'
      ctx.fillRect(0, 0, canvas.width, canvas.height)
      ctx.fillStyle = '#0F0'
      ctx.font = fontSize + 'px monospace'
      
      for(let i = 0; i < drops.length; i++) {
        const text = matrix[Math.floor(Math.random() * matrix.length)]
        ctx.fillText(text, i * fontSize, drops[i] * fontSize)
        
        if(drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
          drops[i] = 0
        }
        drops[i]++
      }
    }
    
    const interval = setInterval(draw, 35)
    return () => clearInterval(interval)
  }, [])
  
  return (
    <>
      <canvas ref={canvasRef} className="matrix-canvas" />
      
      {/* NAVIGATION */}
      <nav className="navbar">
        <div className="nav-container">
          <div className="logo">BANDEV</div>
          <ul className="nav-links">
            <li><a href="#home">Accueil</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </nav>
      
      {/* HERO SECTION */}
      <section id="home" className="hero">
        <div className="particles"></div>
        <div className="hero-content">
          <h1 className="glitch" data-text="BANDEV">BANDEV</h1>
          <p className="subtitle">Développeur Web Créatif</p>
          <div className="phi">φ = 1.618033988...</div>
          <div className="cta-buttons">
            <a href="#portfolio" className="btn btn-primary">Voir Portfolio</a>
            <a href="#contact" className="btn btn-secondary">Me Contacter</a>
          </div>
        </div>
        <div className="scroll-indicator">⬇</div>
      </section>
      
      {/* SERVICES */}
      <section id="services" className="services">
        <h2>Services Premium</h2>
        <div className="services-grid">
          <div className="service-card">
            <span className="service-icon">⚡</span>
            <h3>Développement Web</h3>
            <p>Sites web modernes avec React, Next.js et Node.js</p>
            <div className="price">À partir de 1618€</div>
          </div>
          <div className="service-card">
            <span className="service-icon">🎨</span>
            <h3>Design UI/UX</h3>
            <p>Interfaces élégantes basées sur le nombre d'or</p>
            <div className="price">À partir de 2618€</div>
          </div>
          <div className="service-card">
            <span className="service-icon">🚀</span>
            <h3>Optimisation</h3>
            <p>Performance maximale et SEO avancé</p>
            <div className="price">À partir de 618€</div>
          </div>
        </div>
      </section>
      
      {/* PORTFOLIO */}
      <section id="portfolio" className="portfolio">
        <h2>Portfolio</h2>
        <div className="portfolio-grid">
          <div className="portfolio-item">
            <div className="portfolio-image"></div>
            <h3>E-Commerce Platform</h3>
            <p>React • Node.js • MongoDB</p>
          </div>
          <div className="portfolio-item">
            <div className="portfolio-image"></div>
            <h3>SaaS Dashboard</h3>
            <p>Next.js • TypeScript • Tailwind</p>
          </div>
          <div className="portfolio-item">
            <div className="portfolio-image"></div>
            <h3>Mobile App</h3>
            <p>React Native • Firebase</p>
          </div>
        </div>
      </section>
      
      {/* STATS */}
      <section className="stats">
        <div className="stat">
          <div className="stat-number">50+</div>
          <div className="stat-label">Projets</div>
        </div>
        <div className="stat">
          <div className="stat-number">95+</div>
          <div className="stat-label">Lighthouse</div>
        </div>
        <div className="stat">
          <div className="stat-number">100%</div>
          <div className="stat-label">Satisfaction</div>
        </div>
      </section>
      
      {/* CONTACT */}
      <section id="contact" className="contact">
        <h2>Contact</h2>
        <div className="contact-content">
          <div className="contact-info">
            <p>📧 bcnicolaspro@gmail.com</p>
            <p>📱 +33 6 XX XX XX XX</p>
            <p>📍 France</p>
            <p>💼 SIRET: 841 375 652 00028</p>
          </div>
          <div className="contact-links">
            <a href="https://github.com/NicolasBANIC" className="contact-link">GitHub</a>
            <a href="https://linkedin.com/in/nicolasbanic" className="contact-link">LinkedIn</a>
            <a href="mailto:bcnicolaspro@gmail.com" className="contact-link">Email</a>
          </div>
        </div>
      </section>
      
      <footer>
        <p>© 2024 BANDEV - Créé avec ❤️ et le nombre d'or</p>
      </footer>
    </>
  )
}
END

# CSS COMPLET
cat > app/style.css << 'END'
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;900&display=swap');

:root {
  --phi: 1.618;
  --primary: #6366f1;
  --secondary: #f59e0b;
  --accent: #10b981;
}

body {
  font-family: 'Inter', sans-serif;
  background: #0a0a0a;
  color: white;
  line-height: 1.618;
}

/* MATRIX CANVAS */
.matrix-canvas {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 0;
  opacity: 0.1;
}

/* NAVIGATION */
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 50px;
  background: rgba(0,0,0,0.8);
  backdrop-filter: blur(10px);
  z-index: 1000;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}

.nav-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
}

.logo {
  font-size: 24px;
  font-weight: 900;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.nav-links {
  display: flex;
  list-style: none;
  gap: 30px;
}

.nav-links a {
  color: white;
  text-decoration: none;
  transition: color 0.3s;
}

.nav-links a:hover {
  color: var(--primary);
}

/* HERO */
.hero {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  background: linear-gradient(135deg, #0a0a0a, #1a0033);
}

.particles {
  position: absolute;
  width: 100%;
  height: 100%;
  background-image: radial-gradient(circle, var(--primary) 1px, transparent 1px);
  background-size: 50px 50px;
  animation: drift 20s infinite;
  opacity: 0.1;
}

@keyframes drift {
  to { transform: translate(-50px, -50px); }
}

.hero-content {
  text-align: center;
  z-index: 10;
}

.glitch {
  font-size: clamp(60px, 10vw, 120px);
  font-weight: 900;
  text-transform: uppercase;
  position: relative;
  text-shadow: 0 0 10px var(--primary);
  background: linear-gradient(135deg, var(--primary), var(--secondary), var(--accent));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: glow 2s ease-in-out infinite alternate;
}

@keyframes glow {
  to { text-shadow: 0 0 30px var(--primary), 0 0 60px var(--primary); }
}

.subtitle {
  font-size: 24px;
  margin: 20px 0;
  opacity: 0.8;
}

.phi {
  font-size: 32px;
  font-family: monospace;
  color: var(--secondary);
  margin: 30px 0;
  text-shadow: 0 0 20px var(--secondary);
}

.cta-buttons {
  display: flex;
  gap: 20px;
  justify-content: center;
  margin-top: 40px;
}

.btn {
  padding: 15px 40px;
  text-decoration: none;
  border-radius: 50px;
  font-weight: 600;
  transition: all 0.3s;
  display: inline-block;
}

.btn-primary {
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  color: white;
  box-shadow: 0 10px 30px rgba(99,102,241,0.3);
}

.btn-primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 40px rgba(99,102,241,0.4);
}

.btn-secondary {
  border: 2px solid var(--primary);
  color: var(--primary);
}

.btn-secondary:hover {
  background: var(--primary);
  color: white;
}

.scroll-indicator {
  position: absolute;
  bottom: 30px;
  font-size: 30px;
  animation: bounce 2s infinite;
}

@keyframes bounce {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(10px); }
}

/* SECTIONS */
section {
  padding: 100px 50px;
  max-width: 1200px;
  margin: 0 auto;
  position: relative;
  z-index: 10;
}

h2 {
  font-size: 48px;
  text-align: center;
  margin-bottom: 60px;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

/* SERVICES */
.services {
  background: #0f0f0f;
}

.services-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
}

.service-card {
  background: rgba(255,255,255,0.03);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255,255,255,0.1);
  padding: 40px;
  border-radius: 20px;
  text-align: center;
  transition: all 0.3s;
}

.service-card:hover {
  transform: translateY(-10px);
  border-color: var(--primary);
  box-shadow: 0 20px 40px rgba(99,102,241,0.2);
}

.service-icon {
  font-size: 48px;
  display: block;
  margin-bottom: 20px;
}

.price {
  margin-top: 20px;
  font-size: 20px;
  color: var(--secondary);
  font-weight: 600;
}

/* PORTFOLIO */
.portfolio-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 30px;
}

.portfolio-item {
  background: rgba(255,255,255,0.03);
  border: 1px solid rgba(255,255,255,0.1);
  border-radius: 20px;
  overflow: hidden;
  transition: all 0.3s;
}

.portfolio-item:hover {
  transform: scale(1.05);
  box-shadow: 0 20px 40px rgba(99,102,241,0.3);
}

.portfolio-image {
  height: 200px;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  opacity: 0.5;
}

.portfolio-item h3 {
  padding: 20px 20px 10px;
}

.portfolio-item p {
  padding: 0 20px 20px;
  color: var(--primary);
}

/* STATS */
.stats {
  display: flex;
  justify-content: space-around;
  background: linear-gradient(135deg, rgba(99,102,241,0.1), rgba(245,158,11,0.1));
  border-radius: 30px;
}

.stat {
  text-align: center;
}

.stat-number {
  font-size: 48px;
  font-weight: 900;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

/* CONTACT */
.contact {
  background: #0f0f0f;
}

.contact-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 50px;
}

.contact-info p {
  margin: 15px 0;
  font-size: 18px;
}

.contact-links {
  display: flex;
  gap: 20px;
  align-items: center;
  justify-content: center;
}

.contact-link {
  padding: 10px 25px;
  border: 2px solid var(--primary);
  color: var(--primary);
  text-decoration: none;
  border-radius: 25px;
  transition: all 0.3s;
}

.contact-link:hover {
  background: var(--primary);
  color: white;
  transform: translateY(-3px);
}

/* FOOTER */
footer {
  text-align: center;
  padding: 30px;
  border-top: 1px solid rgba(255,255,255,0.1);
  color: #666;
}

/* RESPONSIVE */
@media (max-width: 768px) {
  .nav-links { display: none; }
  .cta-buttons { flex-direction: column; align-items: center; }
  .contact-content { grid-template-columns: 1fr; }
  .contact-links { flex-direction: column; }
  section { padding: 50px 20px; }
}
END

echo "✅ Site COMPLET créé avec succès !"
