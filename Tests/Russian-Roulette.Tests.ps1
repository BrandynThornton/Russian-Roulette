$ModuleManifestName = 'Russian-Roulette.psd1'
# bc967069-1fa8-4f69-a70f-da547e0e9d9d - testing use of PLASTER predefined variables.
Import-Module $PSScriptRoot\..\$ModuleManifestName

Describe 'Module Manifest Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $PSScriptRoot\..\$ModuleManifestName
        $? | Should Be $true
    }
}