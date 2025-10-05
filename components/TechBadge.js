'use client';

import { motion } from 'framer-motion';

export default function TechBadge({ name, icon: Icon, color = 'primary' }) {
  return (
    <motion.div
      whileHover={{ scale: 1.05, y: -5 }}
      whileTap={{ scale: 0.95 }}
      className="flex flex-col items-center gap-3 p-6 bg-black/40 backdrop-blur-sm border border-primary/20 rounded-xl hover:border-primary/50 transition-all group"
    >
      <div className={`text-${color} group-hover:scale-110 transition-transform`}>
        {Icon && <Icon size={48} />}
      </div>
      <span className="text-gray-300 font-medium text-center">{name}</span>
    </motion.div>
  );
}