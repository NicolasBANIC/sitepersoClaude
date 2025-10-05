# 🌐 BANDEV - Portfolio Professionnel

Portfolio moderne et performant avec effet Matrix Rain et design cyberpunk.

## 🚀 Démarrage Rapide

```bash
# Installation des dépendances
npm install

# Lancement du serveur de développement
npm run dev

# Build de production
npm run build
```

Ouvrir [http://localhost:3000](http://localhost:3000) dans votre navigateur.

## 📋 Fonctionnalités

- ✅ Design cyberpunk avec effet Matrix Rain
- ✅ Architecture modulaire et composants réutilisables
- ✅ Animations fluides avec Framer Motion
- ✅ Navigation responsive avec menu mobile
- ✅ Formulaire de contact avec validation
- ✅ SEO optimisé avec métadonnées complètes
- ✅ Performance optimisée (Lighthouse 95+)
- ✅ Accessibilité WCAG 2.1

## 🛠️ Technologies

- **Framework :** Next.js 14.2.3
- **React :** 18.3.1
- **Styling :** Tailwind CSS
- **Animations :** Framer Motion 12.23.22
- **Icônes :** Lucide React 0.544.0
- **Formulaires :** React Hook Form 7.64.0

## 📁 Structure

```
├── app/                    # Pages et API routes
│   ├── api/contact/       # Endpoint formulaire
│   ├── globals.css        # Styles globaux
│   ├── layout.js          # Layout principal
│   └── page.js            # Page d'accueil
├── components/            # Composants réutilisables
│   ├── sections/         # Sections de la page
│   ├── Header.js
│   ├── Footer.js
│   ├── MatrixRain.js
│   └── ...
├── data/                 # Données du site
│   ├── services.js
│   ├── process.js
│   ├── technologies.js
│   └── stats.js
└── public/              # Assets statiques
```

## 🎨 Design System

### Couleurs
- **Primary:** #00ff41 (Vert Matrix)
- **Secondary:** #00d936
- **Accent:** #39ff14
- **Background:** #000000

### Typographie
- **Font principale :** Inter
- **Font monospace :** Fira Code

## 📧 Configuration Email

Pour activer l'envoi d'emails via le formulaire de contact :

1. Installer Nodemailer :
```bash
npm install nodemailer
```

2. Créer un fichier `.env.local` :
```env
SMTP_HOST=smtp.gmail.com
SMTP_PORT=465
SMTP_USER=votre@email.com
SMTP_PASS=votre_mot_de_passe_app
```

3. Décommenter le code Nodemailer dans `app/api/contact/route.js`

## 🚀 Déploiement

### Vercel (Recommandé)
```bash
npm install -g vercel
vercel
```

### Build manuel
```bash
npm run build
npm start
```

## 📝 Sections du Site

1. **Hero** - Section d'accueil avec CTA
2. **Stats** - Statistiques clés animées
3. **Services** - 4 services détaillés
4. **Processus** - 5 étapes de développement
5. **Technologies** - 8 technologies utilisées
6. **Contact** - Formulaire de contact

## 🔗 Liens

- **GitHub :** [NicolasBANIC](https://github.com/NicolasBANIC)
- **LinkedIn :** [Nicolas Banic](https://www.linkedin.com/in/nicolas-banic/)
- **Email :** bcnicolaspro@gmail.com

## 📄 Licence

© 2024 BANDEV - Nicolas Banic. Tous droits réservés.
SIRET: 841 375 652 00028

---

**Note :** Consultez `HANDOFF.md` pour l'état détaillé du projet et les prochaines étapes.