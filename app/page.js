import MatrixRain from '@/components/MatrixRain';
import Header from '@/components/Header';
import Footer from '@/components/Footer';
import HeroSection from '@/components/sections/HeroSection';
import ServicesSection from '@/components/sections/ServicesSection';
import ProcessSection from '@/components/sections/ProcessSection';
import TechnologiesSection from '@/components/sections/TechnologiesSection';
import StatsSection from '@/components/sections/StatsSection';
import ContactSection from '@/components/sections/ContactSection';

export default function Home() {
  return (
    <main className="relative min-h-screen bg-black text-white overflow-x-hidden">
      {/* Matrix Rain Background */}
      <MatrixRain />

      {/* Header */}
      <Header />

      {/* Main Content */}
      <div className="relative z-10">
        <HeroSection />
        <StatsSection />
        <ServicesSection />
        <ProcessSection />
        <TechnologiesSection />
        <ContactSection />
      </div>

      {/* Footer */}
      <Footer />
    </main>
  );
}
