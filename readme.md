#Russian-Roulette 1.0.0#

Plays a deadly game of Russian Roulette.

From wikipedia (https://en.wikipedia.org/wiki/Russian_roulette):

Russian roulette (Russian: Русская рулетка) is a lethal game of chance in which
a player places a single round in a revolver, 
spins the cylinder, 
places the muzzle against their head, 
and pulls the trigger. 

"Russian" refers to the supposed country of origin, and
roulette to the element of risk-taking and the spinning 
of the revolver's cylinder, which is reminiscent of 
a spinning roulette wheel.
    
  To start a game of Russian Roulette:

     1. Start Windows PowerShell with the "Run as administrator" option.
     2. Type:
        Russian-Roulette

##Examples##
Basic usage:  
`Russian-Roulette`  
Risks stopping a powershell service in 3 tries without a prompt:  
`{ spps -name powershell } | Russian-Roulette -Pulls 3 -Force`

##Parameters##
**Command**  
&nbsp;&nbsp;The Command you want to risk executing, can be piped in. Default: Stop-Computer -Force  
**Pulls**  
&nbsp;&nbsp;The number of times you are willing to pull the trigger. Default: 7  
**Force**  
&nbsp;&nbsp;Bypasses the user prompt for action. Default: False  