'use client';

import ScrollReveal from '../ScrollReveal';
import TechBadge from '../TechBadge';
import { technologies } from '@/data/technologies';

export default function TechnologiesSection() {
  return (
    <section id="technologies" className="relative py-20 px-4">
      <div className="container mx-auto">
        {/* Section Header */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-white mb-4">
              Technologies & <span className="text-primary">Outils</span>
            </h2>
            <p className="text-xl text-gray-300 max-w-2xl mx-auto">
              J'utilise les technologies les plus modernes et performantes pour créer des solutions robustes
            </p>
          </div>
        </ScrollReveal>

        {/* Technologies Grid */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-6">
          {technologies.map((tech, index) => (
            <ScrollReveal key={tech.name} delay={index * 0.05}>
              <div className="bg-black/40 backdrop-blur-sm border border-primary/20 rounded-xl p-6 hover:border-primary/50 transition-all text-center">
                <h3 className={`text-2xl font-bold mb-2 ${tech.color}`}>{tech.name}</h3>
                <p className="text-sm text-primary mb-3">{tech.category}</p>
                <p className="text-gray-400 text-sm">{tech.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}