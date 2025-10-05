export const metadata = {
  title: 'BANDEV - Nicolas Banic | Développeur Web',
  description: 'Portfolio spectaculaire avec effets visuels',
}

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <head>
        <style>{`
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body { overflow-x: hidden; }
        `}</style>
      </head>
      <body>{children}</body>
    </html>
  )
}
