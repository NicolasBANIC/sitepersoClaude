import './globals.css';
import { Inter } from 'next/font/google';

const inter = Inter({ 
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-inter',
});

export const metadata = {
  title: 'BANDEV - Nicolas Banic | Développeur Full-Stack Freelance',
  description: 'Développeur Full-Stack spécialisé en Next.js, React et Node.js. Création de sites web modernes, performants et sur mesure. Services de développement web, e-commerce et applications métier.',
  keywords: 'développeur web, freelance, Next.js, React, Node.js, développement web, création site internet, e-commerce, application web',
  authors: [{ name: 'Nicolas Banic' }],
  creator: 'Nicolas Banic',
  publisher: 'BANDEV',
  openGraph: {
    type: 'website',
    locale: 'fr_FR',
    url: 'https://bandev.fr',
    title: 'BANDEV - Développeur Full-Stack Freelance',
    description: 'Création de sites web modernes et performants. Expert Next.js, React et Node.js.',
    siteName: 'BANDEV',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'BANDEV - Développeur Full-Stack Freelance',
    description: 'Création de sites web modernes et performants',
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
      'max-video-preview': -1,
      'max-image-preview': 'large',
      'max-snippet': -1,
    },
  },
  verification: {
    google: 'your-google-verification-code',
  },
};

export default function RootLayout({ children }) {
  return (
    <html lang="fr" className={inter.variable}>
      <head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
      </head>
      <body className={inter.className}>{children}</body>
    </html>
  );
}
