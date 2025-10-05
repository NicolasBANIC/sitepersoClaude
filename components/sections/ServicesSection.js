'use client';

import { motion } from 'framer-motion';
import { Check } from 'lucide-react';
import ScrollReveal from '../ScrollReveal';
import { services } from '@/data/services';

export default function ServicesSection() {
  return (
    <section id="services" className="relative py-20 px-4">
      <div className="container mx-auto">
        {/* Section Header */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-white mb-4">
              Mes <span className="text-primary">Services</span>
            </h2>
            <p className="text-xl text-gray-300 max-w-2xl mx-auto">
              Des solutions web complètes et personnalisées pour répondre à tous vos besoins digitaux
            </p>
          </div>
        </ScrollReveal>

        {/* Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {services.map((service) => (
            <ScrollReveal key={service.id} delay={service.delay}>
              <motion.div
                whileHover={{ y: -10 }}
                className="bg-black/40 backdrop-blur-sm border border-primary/20 rounded-2xl p-8 hover:border-primary/50 transition-all h-full"
              >
                {/* Icon */}
                <div className="w-16 h-16 bg-primary/10 rounded-xl flex items-center justify-center mb-6">
                  <service.icon size={32} className="text-primary" />
                </div>

                {/* Title & Description */}
                <h3 className="text-2xl font-bold text-white mb-3">{service.title}</h3>
                <p className="text-gray-300 mb-6">{service.description}</p>

                {/* Features */}
                <ul className="space-y-3 mb-6">
                  {service.features.map((feature, index) => (
                    <li key={index} className="flex items-start gap-3">
                      <Check size={20} className="text-primary flex-shrink-0 mt-0.5" />
                      <span className="text-gray-300">{feature}</span>
                    </li>
                  ))}
                </ul>

                {/* Technologies */}
                <div className="flex flex-wrap gap-2 mb-6">
                  {service.technologies.map((tech) => (
                    <span
                      key={tech}
                      className="px-3 py-1 bg-primary/10 border border-primary/30 rounded-full text-primary text-sm"
                    >
                      {tech}
                    </span>
                  ))}
                </div>

                {/* Price */}
                <div className="pt-6 border-t border-primary/20">
                  <p className="text-2xl font-bold text-primary">{service.price}</p>
                </div>
              </motion.div>
            </ScrollReveal>
          ))}
        </div>
      </div>
    </section>
  );
}