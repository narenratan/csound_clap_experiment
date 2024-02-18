# Csound CLAP experiment

I had a play around with the nakst's [CLAP tutorial
code](https://nakst.gitlab.io/tutorial/clap-part-2.html) to see if I could
adapt it to use Csound to generate the audio. The [Csound LADSPA
plugin](https://github.com/csound/csladspa) repo was very helpful for this.

With csound_clap.cpp the single Volume parameter from the tutorial can be
modulated per-note in Csound. The mechanism is using a Csound control channel
whose name has the CLAP note_id concatted (e.g. Volume16) to send the param
value. The note_id is then sent as a p-field in the score event which plays the
note, so in Csound you can get the note-specific value as e.g.
```
iNoteID = p5
kAmp chnget strcat("Volume", sprintf("%d", iNoteID))
```
