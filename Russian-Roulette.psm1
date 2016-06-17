function Animate-Ellipses() {
    foreach ($i in 0..3) {
        Start-Sleep -s 1
        Write-Host "." -NoNewLine
    }
    Write-Host ""
}

function Russian-Roulette() {
    cls
    Write-Host "You load a single bullet into the chamber of your revolver" -NoNewLine
    $chamber = Get-Random -Maximum 7
    Animate-Ellipses
    Prep
}

function Prep() {
    Write-Host "Spin the cylinder" -NoNewLine
    $randomChamber = Get-Random -Maximum 7
    Animate-Ellipses
    Write-Host "Place the muzzle against your temple and finger on the trigger" -NoNewLine
    Animate-Ellipses
    #courtesy of http://www.chris.com/ascii/index.php?art=objects/guns
    #http://www.chris.com/ascii/index.php?art=people/faces
    
Write-Host "                                                                                      .,aaad88888888888baaaa,                                  "
Write-Host "                                                                               .,aad88888888888888888888888888888ba,                           "
Write-Host "                                                                           ,ad8888888888888888888888888888888888888888ba,                      "
Write-Host "                                                                        ,d8888888888888888888888888888888888888888888888888a,                  "
Write-Host "                                                                      ,d888888888888888888888888888888888888888888888888888888b,               "
Write-Host "                                                                    ,d8888888888888888888888888888888888888888888888888888888888b,             "
Write-Host "                                                                   a88888888888888888888888888888888888888888888888888888888888888b,           "
Write-Host "                                                                  a88888888888888888888888888888888888888888888888888888888888888888,          "
Write-Host "                                                                 d888888888888888888888888888888888888888888888888888888888888888888)          "
Write-Host "                                                                d8888888888888888888888888888888888888888888888888888888888888888888'          "
Write-Host "                                                                888888888888888888888888888888888888888888888888888888888888888888":d8a,       "
Write-Host "                                                               (888888888888888888888888888888888888888888888888888888888888888":d888888,      "
Write-Host "                                                               888888888888888888888888888888888888888888888888888888888888":d8888888888b      "
Write-Host "                                                               88888888888888888888888888888888888888888888888888888888":d888888888888888      "
Write-Host "                                                               8888888888888888888888888888888888888888888888888888"" :d88888888888888888)     "
Write-Host "                                                               888888888888888888888888888888888888888888888P""        8888888888888888888     "
Write-Host "                                                               88888888888888888888888888888888888PP"""                8888888888888888888)    "
Write-Host "                                                               8888888888888888""""""""""                              (8888888888888888888    "
Write-Host "                                                               (88888"""                                                8888888888888888888    "
Write-Host "                ,___________________________________________/7_(888"                                                    (888888888888888888    "
Write-Host "           |-_______------. `\                             |   `88"                                                      "88888888888888888    "
Write-Host "       _,/ | _______)     |___\____________________________|    88                                ,aadd8888888888ddaaaa,  "88888888888888888b, "
Write-Host "  .__/`((  | _______      | (/))_______________=.               (8  a8888888888888aaaa,           888PP"""""""""""""P888d   "88888888888"  "8b,"
Write-Host "     `~) \ | _______)     |   /----------------_/               8I   ""`"`"`"`"`"`"PP88  ,d8""P8a,      .,aaaaaaaaaaa,        "88888888'     8b"
Write-Host "       `__y|______________|  /                                  88     .,aaaaaaaaaa,     8I'    ")     ,8P" d8WW8b  "8)        `888888b,     88"
Write-Host "       / ________ __________/                                   (8)  ,8P" d8WW8b  "8)    8I            (8,  "8MM8" ,d8"         `8888"P8a,   88"
Write-Host "      / /#####\(  \  /     ))                                    8I  (8,  "8MM8" ,d8"   (8'             "P888888888P"            8888,  "Pb ,88"
Write-Host "     / /#######|\  \(     //                                     88   "P888888888P"    ,8"                                       888888,  8,888"
Write-Host "    / /########|.\______ad/`                                     88                   ,8"                                        8888 8)  88)8'"
Write-Host "   / /###(\)###||`------``                                       (8)                 ,8"                                         8888b8' ,88)8 "
Write-Host "  / /##########||                                                (8)                ,8"                                          8888"'  d888) "
Write-Host " / /###########||                                                `8b               ,8"         a8a,                              8888ad88" (8' "
Write-Host "( (############||                                                 88              ,8P          " `Pb                            d8888""    d8  "
Write-Host " \ \####(/)####))                                                 (8)             (8I         __   8I                          ,88888     a8'  "
Write-Host "  \ \#########//                                                  `8b              "888b    d8888,d8"                          d88888   ,d8'   "
Write-Host "   \ \#######//                                                    88,              `P""baad"""""P"                           d888888aad8'     "
Write-Host "    `---|_|--`                                                     P88            ,aaaaaaaaaaaaaaa,.                        ,d888888`888)      "
Write-Host "       ((_))                                                       (88b        ,ad88888888888888888888a,                  ,d88888888 888'      "
Write-Host "        `-`                                                         888b     ,d888888888888888888888888888a,           ,d88888888888 88'       "
Write-Host "                                                                    8888b,,ad8888888888888888888888888888888ba,     ,ad8888888888888 8'        "
Write-Host "                                                                    888888888888888888888888888888888888888888888888888888888888888) 8         "
Write-Host "                                                                    (888888888888P"""            """PP88888888888888888888888888888  8         "
Write-Host "                                                                    (8888888888,,aaddd888PPPPP888bbaa,,d888888888888888888888888888  8         "
Write-Host "                                                                     888888888""8ba,               ,ad8"88888888888888888888888888)  8         "
Write-Host "                                                                     888888888    "P8aaaaaaaaaaaa8P"'   88888888888888888888888888   8         "
Write-Host "                                                                     (88888888          888888          8888888888888888888888888'   8         "
Write-Host "                                                                      88888888          888888          888888888888888888888888'   (8         "
Write-Host "                                                                      (8888888,         888888         ,8888888888888888888888"     (8         "
Write-Host "                                                                       8888888ba,,,,,,ad888888ba,,,,,,ad88888888888888888888"       (8         "
Write-Host "                                                                       `88888888888888888888888888888888888888888888888888"         (8         "
Write-Host "                                                                        `8888888888888888888888888888888888888888888888"'           (8         "
Write-Host "                                                                         `888888888888888888888888888888888888888888P"              `8,        "
Write-Host "                                                                          `888888888888888888888888888888888888888"                  "8,       "
Write-Host "                                                                           `P888888888888888888888888888888888"'             Normand  Pb,      "
Write-Host "                                                                             `8888888888888888888888888888"'                 Veilleux  )8      "
Write-Host "                                                                               "88888888888888888PP""''                            ,ad88"      "
Write-Host "                                                                                   """88""""""                                 ,ad8""          "
Write-Host "                                                                                      "8b                                 ,ad8""'              "
Write-Host "                                                                                       `8,                           ,ad8""'                   "
Write-Host "                                                                                        8b                      ,ad8""'                        "
Write-Host "                                                                                        8I                 ,ad8""'                             "
Write-Host "                                                                                        I8            ,ad8""'                                  "
Write-Host "                                                                                        `8)      ,ad8""'                                       "
Write-Host "                                                                                         8I ,ad8""'                                            "
Write-Host "                                                                                         888""                                                 "

    Write-Host "What will you do?"
    $answer = Read-Host -Prompt '1. Pull the trigger. 2. Walk away.'

    if ($answer -eq 2) {
        Write-Host "You put the revolver down, take another shot of tequilla, and cry into your pillow until you pass out"
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
            #Stop-Computer -Force
            return
        } else {
            Write-Host "CLICK, a bead of sweat rolls down your forehead and you live to tell the tale."
        }
    }
    Prep
}

Export-ModuleMember -function Russian-Roulette