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
