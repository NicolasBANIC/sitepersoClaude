'use client';

import { Github, Linkedin, Mail, Phone, MapPin } from 'lucide-react';
import { motion } from 'framer-motion';

export default function Footer() {
  const currentYear = new Date().getFullYear();

  const socialLinks = [
    { icon: Github, href: 'https://github.com/NicolasBANIC', label: 'GitHub' },
    { icon: Linkedin, href: 'https://www.linkedin.com/in/nicolas-banic/', label: 'LinkedIn' },
    { icon: Mail, href: 'mailto:bcnicolaspro@gmail.com', label: 'Email' },
  ];

  const footerLinks = [
    { label: 'Services', href: '#services' },
    { label: 'Processus', href: '#processus' },
    { label: 'Technologies', href: '#technologies' },
    { label: 'Contact', href: '#contact' },
  ];

  return (
    <footer className="relative bg-black/50 backdrop-blur-md border-t border-primary/20 mt-20">
      <div className="container mx-auto px-4 py-12">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
          {/* Brand */}
          <div>
            <h3 className="text-2xl font-bold text-primary mb-4">BANDEV</h3>
            <p className="text-gray-400 mb-4">
              Développeur Full-Stack spécialisé en solutions web modernes et performantes.
            </p>
            <div className="flex gap-4">
              {socialLinks.map((social) => (
                <motion.a
                  key={social.label}
                  href={social.href}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-gray-400 hover:text-primary transition-colors"
                  whileHover={{ scale: 1.2 }}
                  whileTap={{ scale: 0.9 }}
                  aria-label={social.label}
                >
                  <social.icon size={24} />
                </motion.a>
              ))}
            </div>
          </div>

          {/* Quick Links */}
          <div>
            <h4 className="text-lg font-semibold text-white mb-4">Liens Rapides</h4>
            <ul className="space-y-2">
              {footerLinks.map((link) => (
                <li key={link.href}>
                  <a
                    href={link.href}
                    className="text-gray-400 hover:text-primary transition-colors"
                  >
                    {link.label}
                  </a>
                </li>
              ))}
            </ul>
          </div>

          {/* Contact Info */}
          <div>
            <h4 className="text-lg font-semibold text-white mb-4">Contact</h4>
            <ul className="space-y-3">
              <li className="flex items-center gap-2 text-gray-400">
                <Mail size={18} className="text-primary" />
                <a href="mailto:bcnicolaspro@gmail.com" className="hover:text-primary transition-colors">
                  bcnicolaspro@gmail.com
                </a>
              </li>
              <li className="flex items-center gap-2 text-gray-400">
                <Phone size={18} className="text-primary" />
                <span>Disponible sur demande</span>
              </li>
              <li className="flex items-center gap-2 text-gray-400">
                <MapPin size={18} className="text-primary" />
                <span>France</span>
              </li>
            </ul>
          </div>
        </div>

        {/* Bottom Bar */}
        <div className="pt-8 border-t border-primary/20 flex flex-col md:flex-row justify-between items-center gap-4">
          <p className="text-gray-400 text-sm">
            © {currentYear} BANDEV. Tous droits réservés.
          </p>
          <p className="text-gray-400 text-sm">
            SIRET: 841 375 652 00028
          </p>
        </div>
      </div>
    </footer>
  );
}