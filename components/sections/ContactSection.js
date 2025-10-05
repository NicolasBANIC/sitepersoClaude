'use client';

import { useState } from 'react';
import { motion } from 'framer-motion';
import { Mail, Phone, MapPin, Send, CheckCircle, AlertCircle } from 'lucide-react';
import ScrollReveal from '../ScrollReveal';

export default function ContactSection() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    subject: '',
    message: '',
  });
  const [status, setStatus] = useState({ type: '', message: '' });
  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsSubmitting(true);
    setStatus({ type: '', message: '' });

    try {
      const response = await fetch('/api/contact', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (response.ok) {
        setStatus({
          type: 'success',
          message: 'Message envoyé avec succès ! Je vous répondrai dans les 24h.',
        });
        setFormData({ name: '', email: '', phone: '', subject: '', message: '' });
      } else {
        throw new Error('Erreur lors de l\'envoi');
      }
    } catch (error) {
      setStatus({
        type: 'error',
        message: 'Une erreur est survenue. Veuillez réessayer ou me contacter directement par email.',
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <section id="contact" className="relative py-20 px-4">
      <div className="container mx-auto">
        {/* Section Header */}
        <ScrollReveal>
          <div className="text-center mb-16">
            <h2 className="text-4xl md:text-5xl font-bold text-white mb-4">
              Contactez-<span className="text-primary">moi</span>
            </h2>
            <p className="text-xl text-gray-300 max-w-2xl mx-auto">
              Un projet en tête ? Discutons-en ensemble et donnons vie à vos idées
            </p>
          </div>
        </ScrollReveal>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12">
          {/* Contact Info */}
          <ScrollReveal>
            <div className="space-y-8">
              <div>
                <h3 className="text-2xl font-bold text-white mb-6">Informations de contact</h3>
                <div className="space-y-6">
                  <div className="flex items-start gap-4">
                    <div className="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center flex-shrink-0">
                      <Mail size={24} className="text-primary" />
                    </div>
                    <div>
                      <h4 className="text-white font-semibold mb-1">Email</h4>
                      <a
                        href="mailto:bcnicolaspro@gmail.com"
                        className="text-gray-300 hover:text-primary transition-colors"
                      >
                        bcnicolaspro@gmail.com
                      </a>
                    </div>
                  </div>

                  <div className="flex items-start gap-4">
                    <div className="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center flex-shrink-0">
                      <Phone size={24} className="text-primary" />
                    </div>
                    <div>
                      <h4 className="text-white font-semibold mb-1">Téléphone</h4>
                      <p className="text-gray-300">Disponible sur demande</p>
                    </div>
                  </div>

                  <div className="flex items-start gap-4">
                    <div className="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center flex-shrink-0">
                      <MapPin size={24} className="text-primary" />
                    </div>
                    <div>
                      <h4 className="text-white font-semibold mb-1">Localisation</h4>
                      <p className="text-gray-300">France - Travail à distance</p>
                    </div>
                  </div>
                </div>
              </div>

              <div className="bg-primary/10 border border-primary/30 rounded-xl p-6">
                <h4 className="text-white font-semibold mb-2">Disponibilité</h4>
                <p className="text-gray-300">
                  Je réponds généralement sous 24h. Pour les urgences, n'hésitez pas à me contacter directement par email.
                </p>
              </div>
            </div>
          </ScrollReveal>

          {/* Contact Form */}
          <ScrollReveal delay={0.2}>
            <form onSubmit={handleSubmit} className="bg-black/40 backdrop-blur-sm border border-primary/20 rounded-2xl p-8">
              <div className="space-y-6">
                <div>
                  <label htmlFor="name" className="block text-white font-medium mb-2">
                    Nom complet *
                  </label>
                  <input
                    type="text"
                    id="name"
                    name="name"
                    value={formData.name}
                    onChange={handleChange}
                    required
                    className="w-full px-4 py-3 bg-black/50 border border-primary/30 rounded-lg text-white placeholder-gray-500 focus:outline-none focus:border-primary transition-colors"
                    placeholder="Votre nom"
                  />
                </div>

                <div>
                  <label htmlFor="email" className="block text-white font-medium mb-2">
                    Email *
                  </label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    value={formData.email}
                    onChange={handleChange}
                    required
                    className="w-full px-4 py-3 bg-black/50 border border-primary/30 rounded-lg text-white placeholder-gray-500 focus:outline-none focus:border-primary transition-colors"
                    placeholder="votre@email.com"
                  />
                </div>

                <div>
                  <label htmlFor="phone" className="block text-white font-medium mb-2">
                    Téléphone
                  </label>
                  <input
                    type="tel"
                    id="phone"
                    name="phone"
                    value={formData.phone}
                    onChange={handleChange}
                    className="w-full px-4 py-3 bg-black/50 border border-primary/30 rounded-lg text-white placeholder-gray-500 focus:outline-none focus:border-primary transition-colors"
                    placeholder="06 12 34 56 78"
                  />
                </div>

                <div>
                  <label htmlFor="subject" className="block text-white font-medium mb-2">
                    Sujet *
                  </label>
                  <input
                    type="text"
                    id="subject"
                    name="subject"
                    value={formData.subject}
                    onChange={handleChange}
                    required
                    className="w-full px-4 py-3 bg-black/50 border border-primary/30 rounded-lg text-white placeholder-gray-500 focus:outline-none focus:border-primary transition-colors"
                    placeholder="Objet de votre demande"
                  />
                </div>

                <div>
                  <label htmlFor="message" className="block text-white font-medium mb-2">
                    Message *
                  </label>
                  <textarea
                    id="message"
                    name="message"
                    value={formData.message}
                    onChange={handleChange}
                    required
                    rows={5}
                    className="w-full px-4 py-3 bg-black/50 border border-primary/30 rounded-lg text-white placeholder-gray-500 focus:outline-none focus:border-primary transition-colors resize-none"
                    placeholder="Décrivez votre projet..."
                  />
                </div>

                {/* Status Message */}
                {status.message && (
                  <div
                    className={`flex items-center gap-2 p-4 rounded-lg ${
                      status.type === 'success'
                        ? 'bg-green-500/10 border border-green-500/30 text-green-400'
                        : 'bg-red-500/10 border border-red-500/30 text-red-400'
                    }`}
                  >
                    {status.type === 'success' ? (
                      <CheckCircle size={20} />
                    ) : (
                      <AlertCircle size={20} />
                    )}
                    <p className="text-sm">{status.message}</p>
                  </div>
                )}

                {/* Submit Button */}
                <motion.button
                  type="submit"
                  disabled={isSubmitting}
                  whileHover={{ scale: 1.02 }}
                  whileTap={{ scale: 0.98 }}
                  className="w-full px-6 py-4 bg-primary text-black font-semibold rounded-lg hover:bg-secondary transition-colors flex items-center justify-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  {isSubmitting ? (
                    <>
                      <div className="w-5 h-5 border-2 border-black/30 border-t-black rounded-full animate-spin" />
                      Envoi en cours...
                    </>
                  ) : (
                    <>
                      <Send size={20} />
                      Envoyer le message
                    </>
                  )}
                </motion.button>
              </div>
            </form>
          </ScrollReveal>
        </div>
      </div>
    </section>
  );
}