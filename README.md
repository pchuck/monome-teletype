# monome-teletype
various scenes for the monome teletype

# scenes

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

## generative-4track
Lightly modified stock 4track scene
* param knob introduces varying degrees of randomness into step tracking
* CV input 5 properly advances all tracks

## generative-2track
Generatively creates a main and related track, probabilistically updated
at every step.
* with disting EX connected, uses i2c to set RGrv_Bass Lng in multisample mode
* first pass at teletype scene creation
* experimental. not very melodic.

# installation
To install
* copy the desired scene scripts to a flash device
* rename the scene scripts to tt??s.txt
* be careful not to use a tt??s.txt that would overwrite your own scenes
* insert the flash device into you teletype 
* scripts are transferred from the flash device to teletype on powerup
