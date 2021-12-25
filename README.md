# monome-teletype
various scenes for the monome teletype

# scenes

## chord-flow-dyn-grid (20)
Same as chord-flow-gen-grid, but instead of supporting external or
internal clock, all clock is internal. The tempo ebbs and flows dynamically,
producing four channels of chord-based melody, envelopes (crow) and
modulation (ansible). Supports grid.

## melodicer (19)
Melodicer inspired tracker with ansible and crow support.

## firefly-grid (17)
Firefly swarm cv generator, with 8 channels of random computed voltages.
Uses Ansible as an extension and Grid as a visualizer.

* IN1 is clock for 1-8
* outputs 1-8 are based on firefly activity
* triggers 1-8 are variations of clock/divided
* outputs are quantized by scale set on init (I) page
* param knob controls octave range

## fader-grid (16)
A grid-based fader.

* TR 1-8: on fader level change
* CV 1-8: fader level

## chord-flow-gen-grid (15)
A generative machine that generates four channels of dynamic
chord-based melody, (with crow) two channels of envelopes, and
(with ansible) four channels of modulation. Grid is used to steer
the ship.

* IN1 is clock
* outputs 1-4 are v/oct, generative degrees of a chord selected by param knob
* triggers 1-4 are gates, probabilistic (1: 100%, 2:75%, 3:50%, 4:25%)
* outputs 5-8 are modulation, random voltages (0-1v,1v,5v,5v)
* triggers 5-8 are clock divided deterministic gates (/1, /2, /3, /4)
* crow outputs 1-4 are generative envelopes influenced by the clock rate
* patch notes
  * clock is internally generated
  * (optional) external clock to in 1 and set last fader on grid to 0
  * teletype cv outputs 1/2/3 to v/oct inputs of chainsaw
  * teletype cv outputs 5/6 to chainsaw detune and wave inputs
  * crow outputs 1/2 to vca 1/2 level controls
  * chainsaw stereo outputs to vca 1/2 inputs
  * vca 1/2 outputs to stereo filter input l/r
  * stereo filter ouputs l/r to stereo reverb inputs l/r
  * crow output 3 to stereo filter cutoff
  * stereo reverb outputs l/r to master output
* performance notes
  * clock is internal by default
  * for external clock, click the grid button (or, G.BTN.V 1 0)
  * use the last fader on grid to control the clock frequency
  * or, with last fader set to 0, set the metronome period, eg. 'M 1000'
  * use second to last fader to control magnitude of 3rd/4th envelopes (filter)
  * use first set of four faders to control octave offset of the 4 outs
  * use second set of four faders to control octave range of the 4 outs
  * vary the stereo filter master cutoff
  * to see a history in tracker of notes generated: 'L 0 3: PN.L I 16'
  * to re-initialize the tracker (and track lengths): 'INIT.P.ALL'
  * set DRUNK.MIN to higher values to soften attack (init default: 1)
  * set O.MIN to lengthen decay (init default: 2)
* page notes
  * 5 - triggers every m/clock
      updates grid note tracks
  * 6 - triggers every 2 m/clock
  * 7 - triggers every 3 m/clock
  * 8 - triggers every 4 m/clock
      sets note octave offsets based on grid faders
      tracks time / clock period (z)
  
## krell-w-crow (14)
Krell generates random notes on teletype, with crow producing envelopes.
* IN1-IN4 are clock
* outputs 1-4 are random chromatic notes
* triggers 1-4 are probabilistic gates based on param knob position
* crow outputs 1-4 are random envelops

## random-cv-ansible-grid (13)
Random CV generator, with 8 channels of random voltages (using Ansible and Grid)

* IN1 is clock for 1-8
* outputs 1-4 range from 0-max voltage set by param knob
* outputs 5-8 range from 0-5v
* trigger 1-4: all, odd, div3, div4
* trigger 5-8: probabilities 75%, 50%, 25%, 10%
* outputs are quantized by scale set on init (I) page

## generative-4track (12)
Lightly modified stock 4track scene

* param knob introduces varying degrees of randomness into step tracking
* CV input 5 properly advances all tracks

## generative-2track (11)
Generatively creates a main and related track, probabilistically updated
at every step.

* with disting EX connected, uses i2c to set RGrv_Bass Lng in multisample mode
* first pass at teletype scene creation
* experimental. not very melodic.

## random-cv-ansible
Random CV generator, with 8 channels of random voltages (using Ansible)

* IN1 is clock for 1-4
* IN5 is clock for 5-8
* outputs 1-4 range from 0-max voltage set by param knob
* outputs 5-8 range from 0-5v
* trigger 1-4: even, odd, div3, div4
* trigger 5-8: probabilities 75%, 50%, 25% 10%
* outputs are quantized by scale set on init (I) page

## numeric-repeater-tracker
Trigger (and/or melody) generator which uses the numeric repeater function
to advance tracker patterns rhythmically.

* pattern index controls prime pattern
* parameter 'x' sets pattern mask
* param knob controls variation factor
* triggers based on 'NR' function
* CV based on notes set in the tracker
* works well with disting EX in SD multisample mode or a drum machine


## factory installed and other
## generative melodies v0 (10)
## jumpy edges (9)
## test (8)
## earthsea remote (7)
## meadowphysics remote (6)
## white whale remote (5)
## mood ring (4)
## 4 track (3)
## hidden path no path (2)
## randoms (1)
## triangle mountain (0)


# installation
To install
* copy the desired scene scripts to a flash device
* rename the scene scripts to tt??s.txt
* be careful not to use a tt??s.txt that would overwrite your own scenes
* insert the flash device into you teletype 
* scripts are transferred from the flash device to teletype on powerup
