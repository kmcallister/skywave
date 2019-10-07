---
layout:  post
author:  Keegan McAllister
title:   Radio concepts&#58; Bands and modes
date:    2019-10-05
tags:    concepts intro radio
mathjax: true
---

This is the first in a series of beginner-friendly posts on radio concepts.  In
amateur radio, you'll hear a lot of terms like "VHF", "2 meters", "FM", "single
sideband" and so forth. These give essential information about a radio signal.
So, what do all the terms mean? I'll try to keep it simple, with some more
technical info in links and footnotes.

# Frequency and wavelength

The most basic property of a radio wave is its *frequency*. As a wave moves
past an antenna, it creates a positive voltage, then a negative voltage, then
back to positive and so on.[^vector] The number of complete cycles per second
is the frequency, measured in hertz (Hz).  So a radio wave with frequency 500
kHz (500,000 Hz) goes from positive to negative and back 500,000 times per
second.  A FM radio station on 96.5 MHz completes a cycle 96,500,000 times per
second.

Instead of *frequency* we can also talk about *wavelength*, which is the
distance between consecutive wave peaks (or troughs) in space, at a single
instant in time.

![Diagram of a sine wave labeled with crest, trough, wavelength, and
amplitude](/skywave/assets/2019-10-05-bands-and-modes/wavelength.jpg){:.center-block}

<small>([image source](https://cnx.org/contents/Sr8Ev5Og@12.2:1Cicp6CO@17/5-2-Waves-and-Wavelengths))</small>

Radio waves travel at the speed of light,[^vf] so there is a strict
relationship between frequency and wavelength:

$$
\begin{align*}
\textrm{wavelength} & = \frac{\textrm{speed of light}}{\textrm{frequency}} \\\\
\textrm{frequency} & = \frac{\textrm{speed of light}}{\textrm{wavelength}}
\end{align*}
$$

<noscript>
<img alt="Wavelength equals speed of light divided by frequency, and frequency equals speed of light divided by wavelength." class="center-block" src="/skywave/assets/2019-10-05-bands-and-modes/eq1.png" />
</noscript>

Because the speed of light is very close to 300,000,000 meters per second,
we can use this approximation:

$$
\begin{align*}
\textrm{wavelength in meters} & = \frac{300}{\textrm{frequency in MHz}} \\\\
\textrm{frequency in MHz} & = \frac{300}{\textrm{wavelength in meters}}
\end{align*}
$$

<noscript>
<img alt="Wavelength in meters equals 300 divided by frequency in megahertz, and frequency in megahertz equals 300 divided by wavelength in meters." class="center-block" src="/skywave/assets/2019-10-05-bands-and-modes/eq2.png" />
</noscript>

For example, that FM radio station at 96.5 MHz has a wavelength of
approximately 300 / 96.5 = 3.1 meters. WiFi at 2.4 GHz (2400 MHz) has a
wavelength around 300 / 2400 = 0.125 meters = 12.5 centimeters.

Wavelength is particularly important because the size of an antenna, generally
speaking, is proportional to the wavelength of the signals it needs to transmit
or receive. Longer wavelengths (lower frequencies) require larger antennas.

# Bands

It is useful to group ranges of frequencies into *bands*, because different
frequencies have different physical properties and applications.  People have
found uses for radio waves all the way from [a few
Hz](https://en.wikipedia.org/wiki/Extremely_low_frequency) to [hundreds of
GHz](https://en.wikipedia.org/wiki/Extremely_high_frequency) and
beyond.[^light] However, the most widely-used frequencies in ham radio fall
into three general ranges:

* [**HF** ("high frequency")](https://en.wikipedia.org/wiki/High_frequency).
  Officially[^160m] covers the range 3 – 30 Mhz. The special thing about HF
  radio waves is that they reflect off of the
  [ionosphere](https://en.wikipedia.org/wiki/Ionosphere), a layer of Earth's
  upper atmosphere. By [bouncing between Earth's surface and the
  ionosphere](https://en.wikipedia.org/wiki/Skywave), HF signals can travel
  extremely long distances, far beyond the horizon.

  ![A diagram of skywave
  propagation.](/skywave/assets/2019-10-05-bands-and-modes/skywave.jpg){:.center-block}

  <small>([image source](https://en.wikipedia.org/wiki/Skywave#/media/File:Skywave.jpg))</small>
  
  For long distance radio, you can't beat HF.  But the disadvantages are many:
  large antennas, expensive radios, lots of knowledge and time investment
  required.

  HF propagation depends on many factors such as time of day, solar flares, and
  the [11-year sunspot cycle](https://en.wikipedia.org/wiki/Solar_cycle). A HF
  frequency that works great for global communication might stop working just a
  few minutes later. Currently (2019) we are near a sunspot minimum, which
  makes HF more challenging; however there is still a lot of fun to be had.
  
  Besides amateur radio, you will also find
  [shortwave broadcasts](https://en.wikipedia.org/wiki/Shortwave_radio),
  [numbers stations](http://priyom.org/),
  [military radar systems](https://en.wikipedia.org/wiki/Over-the-horizon_radar)
  and [other stuff](https://www.hfunderground.com/wiki/Shortwave_Utility_Stations) in this range.
  [CB radio](https://en.wikipedia.org/wiki/Citizens_band_radio) sits at the high end of HF,
  just below the amateur [10 meter band](https://en.wikipedia.org/wiki/10-meter_band).

* [**VHF** ("very high
  frequency")](https://en.wikipedia.org/wiki/Very_high_frequency), spanning 30
  – 300 MHz. VHF is mainly used for local communication and, unlike HF, is
  suitable for handheld radios. VHF
  [usually](https://en.wikipedia.org/wiki/Sporadic_E_propagation) does not
  bounce off the ionosphere, and will not go over the horizon, although
  dedicated VHF enthusiasts find
  [ways](https://en.wikipedia.org/wiki/Meteor_burst_communications)
  [around](https://en.wikipedia.org/wiki/Earth%E2%80%93Moon%E2%80%93Earth_communication)
  [that](https://en.wikipedia.org/wiki/Airplane_scatter#Radio_amateur_usage).
  VHF is also limited by line-of-sight; it will not travel through obstructions
  such as hills.
  
  Besides hams, other users of VHF include FM broadcasts, some TV channels,
  [air traffic control](https://en.wikipedia.org/wiki/Airband),
  [MURS](https://en.wikipedia.org/wiki/Multi-Use_Radio_Service),
  police/fire/EMS and lots more.

* [**UHF** ("ultra high
  frequency")](https://en.wikipedia.org/wiki/Ultra_high_frequency), spanning
  300 MHz – 3 GHz. The lower end of UHF is similar to VHF in characteristics
  and uses. It is the home of
  [FRS](https://en.wikipedia.org/wiki/Family_Radio_Service)/[GMRS](https://en.wikipedia.org/wiki/General_Mobile_Radio_Service)
  in the USA, and the similar [PMR446](https://en.wikipedia.org/wiki/PMR446) in
  Europe.
  
  The upper end of UHF includes cell phones and WiFi. Hams have privileges on
  [the 2.4 GHz frequencies](https://en.wikipedia.org/wiki/13-centimeter_band)
  used by WiFi, and can operate WiFi hardware at much higher power, subject to
  amateur radio rules.

As you can see, the terminology is archaic; "high frequency" is actually
towards the low end of frequencies in use today!

# Amateur bands

When hams speak of "bands" we usually mean a specific range of frequencies
reserved for amateur use. These are identified by approximate wavelength, e.g.
"80 meter band" or "70 centimeter band". You'll need to consult [a
chart](http://www.arrl.org/files/file/Regulatory/Band%20Chart/Band%20Chart%20-%2011X17%20Color.pdf)
to find the exact frequency limits and privileges, which vary by country and by
license type.

[![A chart of privileges on the 40, 30, and 20 meter bands.](/skywave/assets/2019-10-05-bands-and-modes/ham-bands.png){:.center-block}](http://www.arrl.org/files/file/Regulatory/Band%20Chart/Band%20Chart%20-%2011X17%20Color.pdf)

<small>(excerpt from [ARRL band chart](http://www.arrl.org/files/file/Regulatory/Band%20Chart/Band%20Chart%20-%2011X17%20Color.pdf))</small>

The most important bands for local communication are [2
meters](https://en.wikipedia.org/wiki/2-meter_band) and [70
centimeters](https://en.wikipedia.org/wiki/70-centimeter_band). Most handheld
radios, including the ubiquitous Baofengs, will support both. Because of
line-of-sight limitations,
[repeaters](https://en.wikipedia.org/wiki/Amateur_radio_repeater) are very
common on these bands. A repeater is a fixed station on a hilltop or tall
building, which receives a signal on one frequency and simultaneously
retransmits it on another. Because the repeater has a better location, better
antenna and more power than your handheld radio, it can vastly extend your
effective range — sometimes to 100 miles or more. A full write-up about
repeaters is out of scope here, but you can find a wealth of information
online.

![Diagram of two handheld radios communicating through a repeater.](/skywave/assets/2019-10-05-bands-and-modes/repeater.png){:.center-block}

<small>(own work)</small>

To complicate things, hams will sometimes say "VHF" to mean 2 meters and "UHF"
to mean 70 centimeters, even though there are other amateur bands within VHF
and UHF as defined above.

On HF a whole bunch of bands are available. The best choice at any point in
time depends on many factors such as time of day, ionospheric conditions, the
space available for antennas and the license privileges of the operator.  At
the current sunspot minimum, lower frequencies like
[40](https://en.wikipedia.org/wiki/40-meter_band) and [20
meters](https://en.wikipedia.org/wiki/20-meter_band) are open on a daily basis,
while the higher frequencies like [10
meters](https://en.wikipedia.org/wiki/10-meter_band) are only sporadically open
for long-distance communication.

# Voice modes

A constant radio wave on a single frequency doesn't convey any information
beyond "I'm here!". In order to send a message — be it voice, text, or
something else — we need to vary the radio wave over time. This is where
modulation modes come in.

**Amplitude modulation (AM)** is one simple way to transmit audio. The
amplitude (strength) of the radio wave varies according to the amplitude of the
sound wave. Because AM transmitters are easy to build and AM receivers are
[even simpler](https://en.wikipedia.org/wiki/Crystal_radio), AM was the first
voice mode. It is still used for broadcasting and some other things, but has
largely been replaced by FM and SSB on ham radio (see below).

**Frequency modulation (FM)** is another audio mode. Instead of varying
amplitude over time, we vary frequency. FM produces clear audio and is the
dominant mode for local communication on VHF and UHF. Most handheld radios do
FM and only FM. The main downside is that a FM signal has a large *bandwidth*:
it occupies a large range of frequencies. For this reason and others, FM is not
used on HF bands.

![Animation comparing AM and FM.](/skywave/assets/2019-10-05-bands-and-modes/modulation.gif){: class="center-block" style="width: 400px;"}

<small>([image source](https://en.wikipedia.org/wiki/Amplitude_modulation#/media/File:Amfm3-en-de.gif))</small>

**Single sideband (SSB)** is a more efficient form of AM. Although AM is
different from FM, the varying amplitude nonetheless spreads the signal over a
range of frequencies.

![Waterfall plot of an AM signal, showing two sidebands and a carrier.](/skywave/assets/2019-10-05-bands-and-modes/am-waterfall.jpg){:.center-block}

<small>([image source](https://en.wikipedia.org/wiki/Amplitude_modulation#/media/File:AM_signal.jpg))</small>

In this *waterfall plot* of an AM signal, the horizontal axis is frequency, the
vertical axis is time, and the color indicates signal strength. The strong red
signal in the center is the *carrier* and contains no information by itself.
Also, there are two copies of the audio signal: one above the carrier, the
other below.  These are the upper and lower *sidebands*. In other words, the AM
signal has a lot of redundancy. By transmitting just one sideband and no
carrier, we can save on both power and bandwidth.

![Waterfall plot of just the upper sideband.](/skywave/assets/2019-10-05-bands-and-modes/usb-waterfall.jpg){:.center-block}

<small>(same image source)</small>

This waterfall shows an *upper sideband* (USB) signal. The *lower sideband*
(LSB) would be the same, except flipped left-to-right. For [historical
reasons](http://www.mdarc.org/resources/operating-aids/lsb-or-usb), LSB is used
on the lower HF bands (up to 40 meters) while USB is used at higher
frequencies.[^60m]

The main disadvantage of SSB is that it requires more complex electronics in
both the transmitter and receiver, which is why SSB did not catch on until the
1960s. With modern electronics it is easy to send and receive SSB. Aside from a
few diehard AM users, SSB has taken over as the voice mode for HF ham radio.

**Digital voice modes** encode audio as a stream of bits before sending it.
There are [a number of digital
modes](https://en.wikipedia.org/wiki/List_of_amateur_radio_modes#Digital_voice)
in use, mainly on VHF and up. I don't do digital voice so I don't have much to
say about it!

# Other modes

**Continuous wave (CW)** is the oldest[^cw] radio mode. It works by switching a
transmitter on and off to represent the dots and dashes of [Morse
code](https://en.wikipedia.org/wiki/Morse_code#International_Morse_Code).
Although Morse proficiency is no longer required to get a ham license in most
countries, it is still a very popular mode.  CW occupies a very small ([though
nonzero](https://www.w8ji.com/cw_bandwidth_described.htm)) bandwidth, and works
well even when signals are weak, because the human ear is very good at picking
out the rhythmic beeps of Morse code.  CW-only radio kits are the most
affordable way to get into HF.

The downside of CW, or upside depending on how you look at it, is that you have
to learn Morse code! Skilled CW operators don't hear individual dots and
dashes; they recognize the rhythms of letters or entire words and phrases.
It's like learning a spoken language or a percussion instrument. Many tools and
resources are available for learning Morse code, too many to list here.

**Digital data modes** allow sending digital data over ham radio. Typically
this involves an audio connection between a radio and a computer's sound card.
The computer translates data to and from audio tones, much like an old-school
phone-line modem. Sometimes a [dedicated
device](https://en.wikipedia.org/wiki/Terminal_node_controller) takes the place
of the computer, or the functionality might be built into the radio itself.

A large number of digital modes are used for different purposes. Some of the
more popular ones are
[FT8](https://en.wikipedia.org/wiki/WSJT_(amateur_radio_software)#FT8),
[JS8](http://js8call.com), [RTTY](https://en.wikipedia.org/wiki/Radioteletype),
[PSK31](https://en.wikipedia.org/wiki/PSK31), and
[APRS](https://en.wikipedia.org/wiki/Automatic_Packet_Reporting_System).

[**Slow-scan television**
(SSTV)](https://en.wikipedia.org/wiki/Slow-scan_television) is a way of sending
images over ham radio. Despite the term "television", we are talking about
grainy still images sent over the course of several seconds or minutes. If you
miss the excitement of waiting for JPEGs to load over dial-up internet then
this is the mode for you. Because images are sent so slowly, they fit into the
same bandwidth as a single SSB voice signal.

[**Amateur television**
(ATV)](https://en.wikipedia.org/wiki/Amateur_television), by contrast, is
full-motion video and audio sent using the same technology as commercial
broadcast TV. This requires a lot of bandwidth (6 MHz) so it's only done on the
higher-frequency bands (70 centimeters and up) where there is more room.

That's it for now! Hope you found this informative and stay tuned for more
content.  There is lots more to say about modes so check out
[Wikipedia](https://en.wikipedia.org/wiki/List_of_amateur_radio_modes) or [the
ARRL website](http://www.arrl.org/modes-systems) if you'd like to know more.

# Footnotes

[^vector]: The radio wave itself consists of an electric field and a magnetic field, oscillating together, hence "[electromagnetic (EM) radiation](https://en.wikipedia.org/wiki/Electromagnetic_radiation)". These are vector fields, meaning that they have both a magnitude (strength) and a direction at each point in space. The voltage detected by your radio is a scalar quantity — magnitude only, whether positive or negative. Usually it's produced by the electric field, which induces an electrical current in your antenna. But there are some antennas, such as [magnetic loop antennas](https://en.wikipedia.org/wiki/Loop_antenna#Magnetic_vs._electrical_antennas), where the magnetic field does the work instead.

[^vf]: The actual speed depends on what material the light or radio wave is moving through.  Light is fastest in a vaccum, and about 0.03% slower in air.  Radio waves travel up to 1/3 slower in wire or coaxial cable. The ratio of the speed in a material to the speed in vacuum is called the *velocity factor*. It's important to account for velocity factor when designing antennas. In optics, the reciprocal of the velocity factor is called the [index of refraction](http://hyperphysics.phy-astr.gsu.edu/hbase/Tables/indrf.html).

[^light]: The light we see is also an electromagnetic wave, at a [*really* high frequency](https://en.wikipedia.org/wiki/Electromagnetic_spectrum) like 300 THz (300,000 GHz). At even higher frequencies you get ultraviolet light, then X-rays, then gamma rays. In between radio frequencies and infrared light, there is a "[terahertz gap](https://en.wikipedia.org/wiki/Terahertz_gap)" where neither radio technology nor optical technology works very well, making it difficult to utilize those frequencies.

[^160m]: A lot of ham HF equipment can transmit down to 1.8 MHz, the bottom of the [160 meter band](https://en.wikipedia.org/wiki/160-meter_band), even though that is technically [medium frequency](https://en.wikipedia.org/wiki/Medium_frequency) and not HF. Some can also transmit on [6 meters](https://en.wikipedia.org/wiki/6-meter_band), at the low end of VHF. 6 meters is known as the "magic band" because it's quite unpredictable and has characteristics of both HF and VHF.

[^60m]: And on [60 meters](https://en.wikipedia.org/wiki/60-meter_band), which is a special case in many respects.

[^cw]: Actually, not quite. The [very first radio transmitters](https://en.wikipedia.org/wiki/Spark-gap_transmitter) used an electric spark to excite a [resonant circuit](https://en.wikipedia.org/wiki/LC_circuit), kind of like hitting a bell with a hammer. This produces a [damped wave](https://en.wikipedia.org/wiki/Damped_wave) that fades out until the next spark happens. Damped waves are extremely wasteful of bandwidth and are no longer allowed. Once [continuous wave](https://en.wikipedia.org/wiki/Continuous_wave) took over, the term CW became synonymous with Morse code itself. But a CW signal is not actually continuous; it switches on and off with the pattern of Morse dots and dashes.
