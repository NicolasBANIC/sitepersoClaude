import { Search, Palette, Code, TestTube, Rocket } from 'lucide-react';

export const processSteps = [
  {
    id: 1,
    icon: Search,
    title: 'Analyse & Cahier des Charges',
    description: 'Étude approfondie de vos besoins et définition des objectifs du projet.',
    duration: '3-5 jours',
    details: [
      'Entretien découverte',
      'Analyse de la concurrence',
      'Définition du scope',
      'Estimation budgétaire',
    ],
  },
  {
    id: 2,
    icon: Palette,
    title: 'Design & Prototypage UI/UX',
    description: 'Création de maquettes interactives et validation du design.',
    duration: '5-7 jours',
    details: [
      'Wireframes et maquettes',
      'Design system',
      'Prototype interactif',
      'Validation client',
    ],
  },
  {
    id: 3,
    icon: Code,
    title: 'Développement & Intégration',
    description: 'Développement du site avec les meilleures pratiques et technologies.',
    duration: '2-4 semaines',
    details: [
      'Architecture technique',
      'Développement front-end',
      'Développement back-end',
      'Intégrations tierces',
    ],
  },
  {
    id: 4,
    icon: TestTube,
    title: 'Tests & Assurance Qualité',
    description: 'Tests complets pour garantir la qualité et la performance.',
    duration: '3-5 jours',
    details: [
      'Tests fonctionnels',
      'Tests de performance',
      'Tests de sécurité',
      'Tests multi-navigateurs',
    ],
  },
  {
    id: 5,
    icon: Rocket,
    title: 'Déploiement & Maintenance',
    description: 'Mise en ligne et accompagnement post-lancement.',
    duration: '2-3 jours',
    details: [
      'Configuration serveur',
      'Mise en production',
      'Formation client',
      'Support continu',
    ],
  },
];