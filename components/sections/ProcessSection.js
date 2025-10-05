'use client';

import { motion } from 'framer-motion';
import { Check } from 'lucide-react';
import ScrollReveal from '../ScrollReveal';
import { processSteps } from '@/data/process';

export default function ProcessSection() {
  return (
    <section id="processus" className="relative py-20 px-4">
      <div className="container mx-auto">
        {/* Section Header */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-white mb-4">
              Mon <span className="text-primary">Processus</span>
            </h2>
            <p className="text-xl text-gray-300 max-w-2xl mx-auto">
              Une méthodologie éprouvée en 5 étapes pour garantir la réussite de votre projet
            </p>
          </div>
        </ScrollReveal>

        {/* Process Steps */}
        <div className="relative">
          {/* Vertical Line (Desktop) */}
          <div className="hidden md:block absolute left-1/2 top-0 bottom-0 w-0.5 bg-primary/20 -translate-x-1/2" />

          {/* Steps */}
          <div className="space-y-12">
            {processSteps.map((step, index) => (
              <ScrollReveal key={step.id} delay={index * 0.1}>
                <div className={`flex flex-col md:flex-row items-center gap-8 ${
                  index % 2 === 0 ? 'md:flex-row' : 'md:flex-row-reverse'
                }`}>
                  {/* Content */}
                  <motion.div
                    whileHover={{ scale: 1.02 }}
                    className="flex-1 bg-black/40 backdrop-blur-sm border border-primary/20 rounded-2xl p-8 hover:border-primary/50 transition-all"
                  >
                    <div className="flex items-start gap-4 mb-4">
                      <div className="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center flex-shrink-0">
                        <step.icon size={24} className="text-primary" />
                      </div>
                      <div className="flex-1">
                        <h3 className="text-2xl font-bold text-white mb-2">{step.title}</h3>
                        <p className="text-primary font-semibold">{step.duration}</p>
                      </div>
                    </div>
                    
                    <p className="text-gray-300 mb-6">{step.description}</p>
                    
                    <ul className="space-y-2">
                      {step.details.map((detail, idx) => (
                        <li key={idx} className="flex items-center gap-2 text-gray-300">
                          <Check size={16} className="text-primary flex-shrink-0" />
                          <span>{detail}</span>
                        </li>
                      ))}
                    </ul>
                  </motion.div>

                  {/* Step Number */}
                  <div className="relative z-10 w-16 h-16 bg-primary rounded-full flex items-center justify-center text-black font-bold text-2xl flex-shrink-0 border-4 border-black">
                    {step.id}
                  </div>

                  {/* Spacer for alignment */}
                  <div className="hidden md:block flex-1" />
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}