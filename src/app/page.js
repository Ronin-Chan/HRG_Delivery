"use client"
import { useState } from 'react'
import { motion } from 'framer-motion'
import MaxWidthWrapper from '../component/MaxWidthWrapper'
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
} from 'lucide-react'

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
      setError('Invalid code. Please try again.')
      setAuthorized(false)
    }
  }

  const fadeIn = { hidden: { opacity: 0, y: 20 }, visible: { opacity: 1, y: 0 } }

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
                  textShadow: '0 0 8px rgba(255,255,255,0.8), 0 0 16px rgba(255,255,255,0.6)'
                }}
              >
                Digital Edition
              </span>
            </h1>
            <p className="mt-6 max-w-2xl mx-auto">
              Engage, discuss and learn the UN&apos;s 30 Articles through an interactive online experience—perfect for classrooms and youth groups.
            </p>
            <motion.a
              href="#download"
              className={buttonVariants({
                size: 'lg',
                className: 'mt-8 bg-pink-600 hover:bg-pink-500 text-white shadow-md hover:shadow-lg ring-1 ring-pink-400'
              })}
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
            >
              Download the Game <ChevronDown className="ml-2 h-5 w-5" />
            </motion.a>
          </div>
        </MaxWidthWrapper>
      </motion.section>

      {/* Features */}
      <MaxWidthWrapper className="my-24 grid grid-cols-1 md:grid-cols-3 gap-8">
        {[
          {
            icon: <BookOpen className="h-8 w-8 text-purple-400" />,
            title: 'Educational',
            desc: 'Grounded in the Universal Declaration, fosters real discussions.',
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
            transition={{ duration: 0.6 }}
            className="flex flex-col items-center p-6 bg-gray-900 rounded-2xl shadow-lg hover:shadow-2xl transition-shadow"
          >
            {icon}
            <h3 className="mt-4 text-xl font-semibold text-white">{title}</h3>
            <p className="mt-2 text-center">{desc}</p>
          </motion.div>
        ))}
      </MaxWidthWrapper>

      {/* Game Showcase (unchanged) */}
      <div id="showcase" className="relative isolate my-24">
        {/* first glow/background */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
        >
          <div
            style={{
              clipPath:
                'polygon(74.1% 44.1%,100% 61.6%,97.5% 26.9%,85.5% 0.1%,80.7% 2%,72.5% 32.5%,60.2% 62.4%,52.4% 68.1%,47.5% 58.3%,45.2% 34.5%,27.5% 76.7%,0.1% 64.9%,17.9% 100%,27.6% 76.8%,76.1% 97.7%,74.1% 44.1%)'
            }}
            className="relative left-[calc(50%-11rem)] w-[36.125rem] aspect-[1155/678] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-purple-600 to-yellow-400 opacity-20 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]"
          />
        </div>

        <div className="mx-auto max-w-4xl px-6 lg:px-8 flex justify-center">
          <motion.div
            initial="hidden"
            whileInView="visible"
            viewport={{ once: true }}
            variants={fadeIn}
            transition={{ duration: 0.6 }}
            className="overflow-hidden rounded-3xl bg-gray-900 shadow-2xl ring-1 ring-gray-700 w-full max-w-lg aspect-square"
          >
            <Image
              src='/game-pic.jpg'
              alt='game picture'
              width={700}
              height={700}
              quality={100}
              className='rounded-md bg-black p-2 sm:p-8 md:p-10 shadow-2xl'
            />
          </motion.div>
        </div>

        {/* second glow/background */}
        <div
          aria-hidden="true"
          className="pointer-events-none absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
        >
          <div
            style={{
              clipPath:
                'polygon(74.1% 44.1%,100% 61.6%,97.5% 26.9%,85.5% 0.1%,80.7% 2%,72.5% 32.5%,60.2% 62.4%,52.4% 68.1%,47.5% 58.3%,45.2% 34.5%,27.5% 76.7%,0.1% 64.9%,17.9% 100%,27.6% 76.8%,76.1% 97.7%,74.1% 44.1*)'
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
        className="py-16"
      >
        <MaxWidthWrapper className="space-y-6 px-6 lg:px-8 text-gray-300">
          <h2 className="text-3xl font-bold text-white text-center">About the Game</h2>
          <ul className="grid grid-cols-1 md:grid-cols-3 gap-6">
            <li className="space-y-2">
              <h4 className="text-xl font-semibold text-white">
                <BookOpen className="inline h-6 w-6 text-purple-400 mr-2" />
                Aim 1
              </h4>
              <p>Teach rights, freedoms & responsibilities in fun, interactive scenarios.</p>
            </li>
            <li className="space-y-2">
              <h4 className="text-xl font-semibold text-white">
                <Users className="inline h-6 w-6 text-pink-400 mr-2" />
                Aim 2
              </h4>
              <p>Foster empathy and respect to reduce bullying through discussion.</p>
            </li>
            <li className="space-y-2">
              <h4 className="text-xl font-semibold text-white">
                <Clock className="inline h-6 w-6 text-yellow-400 mr-2" />
                Aim 3
              </h4>
              <p>Encourage critical thinking with real-world ethical dilemmas.</p>
            </li>
          </ul>
        </MaxWidthWrapper>
      </motion.div>

      {/* Download Section */}
      <motion.section
        id="download"
        initial="hidden"
        whileInView="visible"
        viewport={{ once: true }}
        variants={fadeIn}
        transition={{ duration: 0.6 }}
        className="py-20"
      >
        <MaxWidthWrapper className="max-w-md mx-auto bg-black/70 p-8 rounded-3xl shadow-2xl ring-1 ring-gray-700 text-gray-300">
          <h2 className="text-2xl font-bold text-white text-center mb-4">
            Download Digital Version
          </h2>
          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <Label htmlFor="access-code" className="text-sm font-medium text-gray-300">
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
                className: 'w-full bg-purple-600 hover:bg-purple-500 text-white shadow-inner ring-1 ring-purple-400'
              })}
            >
              <DownloadCloud className="inline h-5 w-5 mr-2 animate-pulse" />
              Unlock Download
            </button>
          </form>

          {authorized && (
            <motion.div
              initial={{ opacity: 0, scale: 0.8 }}
              animate={{ opacity: 1, scale: 1 }}
              transition={{ delay: 0.3 }}
              className="mt-6 text-center"
            >
              <a
                href="/game-pic.jpg"
                download
                className={buttonVariants({
                  size: 'lg',
                  className: 'w-full bg-pink-600 hover:bg-pink-500 text-white shadow-lg ring-1 ring-pink-400'
                })}
              >
                Download Now
              </a>
              <p className="mt-2 text-sm text-gray-400">Thank you! You are available to download now</p>
            </motion.div>
          )}
        </MaxWidthWrapper>
      </motion.section>
    </div>
  )
}
