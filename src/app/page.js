'use client'

import { useState } from 'react'
import { motion } from 'framer-motion'
import MaxWidthWrapper from '../components/MaxWidthWrapper'
import { buttonVariants } from '../components/ui/button'
import { Input } from '../components/ui/input'
import { Label } from '../components/ui/label'
import Image from 'next/image'
import {
  BookOpen,
  Users,
  Clock,
  DownloadCloud,
  ChevronDown,
  Code,
  FileText,
} from 'lucide-react'
import EarthCanvas from '../components/canvas/Earth'

export default function Home() {
  const [code, setCode] = useState('')
  const [authorized, setAuthorized] = useState(false)
  const [error, setError] = useState('')
  const validCode = 'HRG-PLAY2025!'

  const handleSubmit = (e) => {
    e.preventDefault()
    if (code.trim() === validCode) {
      setAuthorized(true)
      setError('')
    } else {
      setAuthorized(false)
      setError('Invalid code. Please try again.')
    }
  }

  const fadeIn = {
    hidden: { opacity: 0, y: 20 },
    visible: { opacity: 1, y: 0 },
  }

  return (
    <div className="bg-black text-gray-300 min-h-screen">
      {/* Hero */}
      <motion.section
        initial="hidden"
        animate="visible"
        variants={fadeIn}
        transition={{ duration: 0.8 }}
        className="relative overflow-hidden bg-black py-24"
      >
        <MaxWidthWrapper className="text-center">
          <div className="inline-block p-6 bg-black/50 backdrop-blur-md rounded-3xl shadow-xl">
            <h1 className="text-5xl font-extrabold md:text-6xl lg:text-7xl tracking-tight">
              <span className="bg-clip-text text-transparent bg-gradient-to-r from-purple-400 to-pink-500">
                The Human Rights Game
              </span>
              <br />
              <span
                className="text-3xl md:text-4xl font-light text-gray-300"
                style={{
                  textShadow:
                    '0 0 8px rgba(255,255,255,0.8), 0 0 16px rgba(255,255,255,0.6)',
                }}
              >
                Digital Edition
              </span>
            </h1>
            <p className="mt-6 max-w-2xl mx-auto">
              Engage, discuss and learn the UN&apos;s 30 Articles through an
              interactive online experience—perfect for classrooms and youth
              groups.
            </p>
            <motion.a
              href="#download"
              className={buttonVariants({
                size: 'lg',
                className:
                  'mt-8 bg-pink-600 text-white shadow-md ring-1 ring-pink-400',
              })}
              whileHover={{
                scale: 1.05,
                backgroundColor: '#D53F8C',
                boxShadow: '0 0 10px rgba(255,255,255,0.6)',
              }}
              whileTap={{ scale: 0.95 }}
            >
              Download the Game <ChevronDown className="ml-2 h-5 w-5" />
            </motion.a>
          </div>
        </MaxWidthWrapper>
      </motion.section>

      {/* Features */}
      <MaxWidthWrapper
        className="my-24 grid grid-cols-1 md:grid-cols-3 gap-8"
        style={{ perspective: 1000 }}
      >
        {[
          {
            icon: <BookOpen className="h-8 w-8 text-purple-400" />,
            title: 'Educational',
            desc:
              'Grounded in the Universal Declaration, fosters real discussions.',
          },
          {
            icon: <Users className="h-8 w-8 text-pink-400" />,
            title: 'Collaborative',
            desc: 'Players share scenarios and insights together.',
          },
          {
            icon: <Clock className="h-8 w-8 text-yellow-400" />,
            title: 'Quick Play',
            desc: '40-60 minutes of immersive learning.',
          },
        ].map(({ icon, title, desc }) => (
          <motion.div
            key={title}
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true }}
            variants={fadeIn}
            transition={{ duration: 1 }}
            whileHover={{
              scale: 1.05,
              filter: 'brightness(1.2)',
              boxShadow: '0 0 20px rgba(255,255,255,0.6)',
              transition: { type: 'spring', stiffness: 300, damping: 20 },
            }}
            className="flex flex-col items-center p-6 bg-gray-900 rounded-2xl shadow-lg transform-gpu transition-all"
            style={{ transformStyle: 'preserve-3d' }}
          >
            {icon}
            <h3 className="mt-4 text-xl font-semibold text-white">{title}</h3>
            <p className="mt-2 text-center">{desc}</p>
          </motion.div>
        ))}
      </MaxWidthWrapper>

      {/* Game Showcase */}
      <div id="showcase" className="relative isolate my-24">
        {/* First glow/background */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
        >
          <div
            style={{
              clipPath:
                'polygon(74.1% 44.1%,100% 61.6%,97.5% 26.9%,85.5% 0.1%,' +
                '80.7% 2%,72.5% 32.5%,60.2% 62.4%,52.4% 68.1%,' +
                '47.5% 58.3%,45.2% 34.5%,27.5% 76.7%,0.1% 64.9%,' +
                '17.9% 100%,27.6% 76.8%,76.1% 97.7%,74.1% 44.1%)',
            }}
            className="relative left-[calc(50%-11rem)] w-[36.125rem] aspect-[1155/678] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-purple-600 to-yellow-400 opacity-20 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]"
          />
        </div>

        <div className="mx-auto max-w-4xl px-6 lg:px-8 flex justify-center">
          {/* rotating-gradient border wrapper */}
          <div className="relative p-1 rounded-4xl overflow-hidden">
            {/* rotating gradient ring */}
            <div
              className="absolute inset-0 bg-gradient-to-r from-purple-400 via-pink-500 to-yellow-400 animate-spin"
              style={{ animationDuration: '20s' }}
            />

            {/* inner card with your original motion/Image */}
            <motion.div
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={fadeIn}
              transition={{ duration: 0.6 }}
              className="relative z-10 overflow-hidden rounded-3xl bg-gray-900 shadow-2xl ring-1 ring-gray-700 w-full max-w-lg aspect-square"
            >
              <Image
                src="/game-pic.jpg"
                alt="game picture"
                width={700}
                height={700}
                quality={100}
                className="rounded-md bg-black p-2 sm:p-8 md:p-10 shadow-2xl"
              />
            </motion.div>
          </div>
        </div>

        {/* Second glow/background */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
        >
          <div
            style={{
              clipPath:
                'polygon(74.1% 44.1%,100% 61.6%,97.5% 26.9%,85.5% 0.1%,' +
                '80.7% 2%,72.5% 32.5%,60.2% 62.4%,52.4% 68.1%,' +
                '47.5% 58.3%,45.2% 34.5%,27.5% 76.7%,0.1% 64.9%,' +
                '17.9% 100%,27.6% 76.8%,76.1% 97.7%,74.1% 44.1*)',
            }}
            className="relative left-[calc(50%-13rem)] w-[36.125rem] aspect-[1155/678] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-purple-600 to-yellow-400 opacity-20 sm:left-[calc(50%-36rem)] sm:w-[72.1875rem]"
          />
        </div>
      </div>

      {/* About */}
      <motion.div
        initial="hidden"
        whileInView="visible"
        viewport={{ once: true }}
        variants={fadeIn}
        transition={{ duration: 0.6 }}
        className="relative overflow-hidden py-16 bg-black"
      >
        {/* Decorative gradient blurs */}
        <div className="absolute inset-0 pointer-events-none">
          <div
            className="absolute top-0 left-1/2 w-[60%] h-[60%] transform -translate-x-1/2 -translate-y-1/3 bg-gradient-to-tr from-purple-500 to-pink-500 opacity-20 blur-3xl"
          />
          <div
            className="absolute bottom-0 right-1/2 w-[50%] h-[50%] transform translate-x-1/2 translate-y-1/3 bg-gradient-to-bl from-yellow-600 to-green-400 opacity-20 blur-3xl"
          />
        </div>

        <MaxWidthWrapper className="relative z-10 space-y-10 px-6 lg:px-8 text-gray-300">
          <motion.h2
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true }}
            variants={fadeIn}
            transition={{ duration: 0.6 }}
            className="text-4xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-purple-400 to-pink-500 text-center"
          >
            About the Game
          </motion.h2>

          <ul className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <motion.li
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={fadeIn}
              transition={{ duration: 0.6 }}
              className="space-y-2 flex flex-col items-center text-center"
            >
              <BookOpen className="h-8 w-8 text-purple-400" />
              <h4 className="text-xl font-semibold text-white">Aim 1</h4>
              <p>
                Teach rights, freedoms & responsibilities in fun, interactive
                scenarios.
              </p>
            </motion.li>

            <motion.li
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={fadeIn}
              transition={{ duration: 0.6, delay: 0.1 }}
              className="space-y-2 flex flex-col items-center text-center"
            >
              <Users className="h-8 w-8 text-pink-400" />
              <h4 className="text-xl font-semibold text-white">Aim 2</h4>
              <p>Foster empathy and respect to reduce bullying through discussion.</p>
            </motion.li>

            <motion.li
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={fadeIn}
              transition={{ duration: 0.6, delay: 0.2 }}
              className="space-y-2 flex flex-col items-center text-center"
            >
              <Clock className="h-8 w-8 text-yellow-400" />
              <h4 className="text-xl font-semibold text-white">Aim 3</h4>
              <p>Encourage critical thinking with real-world ethical dilemmas.</p>
            </motion.li>
          </ul>
        </MaxWidthWrapper>
      </motion.div>

      {/* Download Section with EarthCanvas Background */}
      <div className="relative py-20 min-h-[350px] md:min-h-[550px] overflow-hidden">
        <div className="absolute inset-0 z-0 overflow-hidden pointer-events-none">
          <div className="absolute inset-y-0 right-0 w-[55%] h-full">
            <EarthCanvas />
          </div>
        </div>

        <motion.section
          id="download"
          initial="hidden"
          whileInView="visible"
          viewport={{ once: true }}
          variants={fadeIn}
          transition={{ duration: 0.6 }}
          className="relative z-10 max-w-xl mx-auto px-6 lg:px-8"
        >
          <MaxWidthWrapper className="bg-black/70 p-8 rounded-3xl shadow-2xl ring-1 ring-gray-700 text-gray-300">
            <h2 className="text-2xl font-bold text-white text-center mb-6">
              Download Digital Version
            </h2>
            <form onSubmit={handleSubmit} className="space-y-4 max-w-sm mx-auto">
              <div>
                <Label
                  htmlFor="access-code"
                  className="text-sm font-medium text-gray-300"
                >
                  Access Code
                </Label>
                <Input
                  id="access-code"
                  type="password"
                  placeholder="Enter your code"
                  value={code}
                  onChange={(e) => setCode(e.target.value)}
                  className="mt-1 w-full bg-gray-800 text-white placeholder-gray-500"
                  required
                />
              </div>
              {error && <p className="text-sm text-pink-400">{error}</p>}
              <button
                type="submit"
                className={buttonVariants({
                  size: 'lg',
                  className:
                    'w-full bg-purple-600 hover:bg-purple-500 text-white shadow-inner ring-1 ring-purple-400',
                })}
              >
                <DownloadCloud className="inline h-5 w-5 mr-2 animate-pulse" />
                Unlock Downloads
              </button>
            </form>

            {authorized && (
              <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 mt-8 text-center">
                <a
                  href="/game-pic.jpg"
                  download
                  className="flex flex-col items-center p-4 bg-gray-800 rounded-2xl hover:bg-gray-700 transition transform hover:scale-105"
                >
                  <Code className="h-12 w-12 text-pink-500" />
                  <span className="mt-4 text-md font-semibold text-white">
                    Executable File
                  </span>
                </a>
                <a
                  href="/game-pic.jpg"
                  download
                  className="flex flex-col items-center p-4 bg-gray-800 rounded-2xl hover:bg-gray-700 transition transform hover:scale-105"
                >
                  <FileText className="h-12 w-12 text-purple-500" />
                  <span className="mt-4 text-md font-semibold text-white">
                    Deployment Instruction
                  </span>
                </a>
                <a
                  href="/game-pic.jpg"
                  download
                  className="flex flex-col items-center p-4 bg-gray-800 rounded-2xl hover:bg-gray-700 transition transform hover:scale-105"
                >
                  <BookOpen className="h-12 w-12 text-green-700" />
                  <span className="mt-4 text-md font-semibold text-white">
                    User Guide
                  </span>
                </a>
              </div>
            )}
          </MaxWidthWrapper>
        </motion.section>
      </div>

      {/* FAQ */}
      {authorized && (
        <section id="faq" className="py-16 bg-gray-900 text-gray-200">
          <MaxWidthWrapper className="space-y-6 px-6 lg:px-8">
            <h2 className="text-3xl font-bold text-white text-center mb-6">
              FAQ
            </h2>
            <div className="space-y-6 text-left">
              <div>
                <h3 className="text-xl font-semibold">
                  What is The Human Rights Game?
                </h3>
                <p>
                  This interactive digital edition helps learners engage with
                  the UN&apos;s 30 Articles through realistic scenarios and
                  guided discussions.
                </p>
              </div>
              <div>
                <h3 className="text-xl font-semibold">
                  How long does gameplay take?
                </h3>
                <p>
                  Sessions typically run 40-60 minutes, making it perfect for
                  classrooms or youth workshops.
                </p>
              </div>
              <div>
                <h3 className="text-xl font-semibold">
                  Can I customise scenarios?
                </h3>
                <p>
                  Yes—downloadable scenario packs let you tailor the experience
                  to your group’s interests and age range.
                </p>
              </div>
            </div>
          </MaxWidthWrapper>
        </section>
      )}

      <footer className="py-4 text-center text-gray-300 bg-gray-950">
        <p className='text-md font-semibold'>Disclaimer</p>
        <p className='text-sm'>Still in development, not final version!</p>
      </footer>
    </div>
  )
}
