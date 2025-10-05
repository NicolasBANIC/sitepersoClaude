'use client';

import ScrollReveal from '../ScrollReveal';
import AnimatedCounter from '../AnimatedCounter';
import { stats } from '@/data/stats';

export default function StatsSection() {
  return (
    <section className="relative py-20 px-4">
      <div className="container mx-auto">
        <ScrollReveal>
          <div className="bg-gradient-to-r from-primary/10 to-secondary/10 backdrop-blur-sm border border-primary/20 rounded-2xl p-12">
            <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
              {stats.map((stat, index) => (
                <ScrollReveal key={stat.id} delay={index * 0.1}>
                  <div className="text-center">
                    <div className="text-4xl md:text-5xl font-bold text-primary mb-2">
                      <AnimatedCounter 
                        end={stat.value} 
                        suffix={stat.suffix}
                        duration={2000}
                      />
                    </div>
                    <h3 className="text-lg font-semibold text-white mb-1">{stat.label}</h3>
                    <p className="text-sm text-gray-400">{stat.description}</p>
                  </div>
                </ScrollReveal>
              ))}
            </div>
          </div>
        </ScrollReveal>
      </div>
    </section>
  );
}