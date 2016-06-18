$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir  = Split-Path -Parent $ScriptPath
$maxSweatDrops = 7

function Animate-Ellipses() {
    foreach ($i in 0..3) {
        Start-Sleep -s 1
        Write-Host "." -NoNewLine
    }
    Write-Host ""
}

function Get-Face() {
    $script:face = gc "$scriptDir\art\face.txt"
}

function Get-Forehead() {
    $foreheads = gc "$scriptDir\art\forehead.txt"
    $lines = @()
    foreach ($line in $foreheads) {
        if([string]::IsNullOrWhiteSpace($line)) {
            $script:sweat += , $lines
            $lines = @()
        } else {
            $lines += , $line
        }
    }
    $script:sweat += , $lines
}

function Russian-Roulette() {
  <#
  .SYNOPSIS
    Plays a deadly game of Russian Roulette.
  .DESCRIPTION
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
  .EXAMPLE
    Russian-Roulette
  .EXAMPLE
    { spps -name powershell } | Russian-Roulette -Pulls 3 -Force
  .PARAMETER Command
    The Command you want to risk executing, can be piped in. Default: Stop-Computer -Force
  .PARAMETER Pulls
    The number of times you are willing to pull the trigger. Default: 7
  #>
  param
  (
    [Parameter(Mandatory=$False,
    ValueFromPipeline=$True,
    ValueFromPipelineByPropertyName=$True,
    HelpMessage='What command would you like to risk executing?')]
    [ScriptBlock]$Command = { Stop-Computer -Force },
    [int]$Pulls = 7,
    [switch]$Force = $false
  )
    cls
    $script:totalPulls = 0
    $script:sweatDrops = 0
    $script:sweat = @()
    Get-Face
    Get-Forehead
    Write-Host "You load a single bullet into the chamber of your revolver" -NoNewLine
    $chamber = Get-Random -Maximum $maxSweatDrops
    Animate-Ellipses
    Prep
}

function Prep() {
    Write-Host "Spin the cylinder" -NoNewLine
    $randomChamber = Get-Random -Maximum $maxSweatDrops
    Animate-Ellipses
    Write-Host "Place the muzzle against your temple and finger on the trigger" -NoNewLine
    Animate-Ellipses
    #courtesy of http://www.chris.com/ascii/index.php?art=objects/guns
    #courtesy of Normand Veilleux http://www.chris.com/ascii/index.php?art=people/faces
    #7 drops displayed max
    $index = $script:sweatDrops
    if ($index -gt $maxSweatDrops) {
        $index = $maxSweatDrops
    }
    foreach ($line in $script:sweat[$index]) {
        if($line.Length -gt [Console]::BufferWidth) {
            Write-Host $line.Substring(0, [Console]::BufferWidth)
        } else {
            Write-Host $line
        }
    }
    foreach ($line in $script:face) {
        if($line.Length -gt [Console]::BufferWidth) {
            Write-Host $line.Substring(0, [Console]::BufferWidth)
        } else {
            Write-Host $line
        }
    }

    if ($Force) {
        $answer = 1
    } else {
        Write-Host "What will you do?"
        $answer = Read-Host -Prompt '1. Pull the trigger. 2. Walk away.'
    }

    if ($answer -eq 2) {
        Write-Host "You put the revolver down, take another shot of tequilla, and cry into your pillow until you pass out."
        return
    } elseif ($answer -eq 1) {
        if($chamber -eq $randomChamber) {
            #courtesy of http://patorjk.com/software/taag/
            Write-Host "BBBBBBBBBBBBBBBBB               AAA               NNNNNNNN        NNNNNNNN        GGGGGGGGGGGGG !!! "
            Write-Host "B::::::::::::::::B             A:::A              N:::::::N       N::::::N     GGG::::::::::::G!!:!!"
            Write-Host "B::::::BBBBBB:::::B           A:::::A             N::::::::N      N::::::N   GG:::::::::::::::G!:::!"
            Write-Host "BB:::::B     B:::::B         A:::::::A            N:::::::::N     N::::::N  G:::::GGGGGGGG::::G!:::!"
            Write-Host "  B::::B     B:::::B        A:::::::::A           N::::::::::N    N::::::N G:::::G       GGGGGG!:::!"
            Write-Host "  B::::B     B:::::B       A:::::A:::::A          N:::::::::::N   N::::::NG:::::G              !:::!"
            Write-Host "  B::::BBBBBB:::::B       A:::::A A:::::A         N:::::::N::::N  N::::::NG:::::G              !:::!"
            Write-Host "  B:::::::::::::BB       A:::::A   A:::::A        N::::::N N::::N N::::::NG:::::G    GGGGGGGGGG!:::!"
            Write-Host "  B::::BBBBBB:::::B     A:::::A     A:::::A       N::::::N  N::::N:::::::NG:::::G    G::::::::G!:::!"
            Write-Host "  B::::B     B:::::B   A:::::AAAAAAAAA:::::A      N::::::N   N:::::::::::NG:::::G    GGGGG::::G!:::!"
            Write-Host "  B::::B     B:::::B  A:::::::::::::::::::::A     N::::::N    N::::::::::NG:::::G        G::::G!!:!!"
            Write-Host "  B::::B     B:::::B A:::::AAAAAAAAAAAAA:::::A    N::::::N     N:::::::::N G:::::G       G::::G !!! "
            Write-Host "BB:::::BBBBBB::::::BA:::::A             A:::::A   N::::::N      N::::::::N  G:::::GGGGGGGG::::G     "
            Write-Host "B:::::::::::::::::BA:::::A               A:::::A  N::::::N       N:::::::N   GG:::::::::::::::G !!! "
            Write-Host "B::::::::::::::::BA:::::A                 A:::::A N::::::N        N::::::N     GGG::::::GGG:::G!!:!!"
            Write-Host "BBBBBBBBBBBBBBBBBAAAAAAA                   AAAAAAANNNNNNNN         NNNNNNN        GGGGGG   GGGG !!! "
            Start-Sleep -m 250
            & $Command
            return
        } else {
            Write-Host "CLICK, a bead of sweat rolls down your forehead and you live to tell the tale."
            $script:sweatDrops++
        }
    }
    if($script:totalPulls++ -lt $Pulls) {
        Prep
    } else {
        Write-Host "Better luck next time."
    }
}

Export-ModuleMember -function Russian-Roulette