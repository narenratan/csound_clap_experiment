; Example using Scala scl and kbm files to specify a tuning

<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 48000
0dbfs = 1
nchnls = 2
ksmps = 16

instr 1
  ; kAmp chnget "Volume"

  iNoteID = p5
  kAmp chnget strcat("Volume", sprintf("%d", iNoteID))

  iFreq mtof p4
  aVco vco2 kAmp, iFreq
  outall aVco
  ; kEnv madsr 0.1, 0.4, 0.6, 20/p4
  ; aLp moogladder aVco, 5000, 0.1
  ; outall aLp*kEnv
endin

</CsInstruments>
<CsScore>
</CsScore>
</CsoundSynthesizer>
