# Generate Pester Unit tests for the module
[CmdletBinding()]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '',
    Justification = 'Suppress false positives in Pester code blocks')]
param(
    [System.IO.DirectoryInfo]
    $SourcePath
)


Describe "PSScriptModule Unit Tests" {
    It "Have at least 1 Public Function" {
        $publicFunctions = Get-ChildItem -Path "$SourcePath\Public\*.ps1" -Exclude "*.Tests.*"
        $publicFunctions.Count | Should -BeGreaterThan 0
    }

    It "Have at least 1 Private Function" {
        $privateFunctions = Get-ChildItem -Path "$SourcePath\Private\*.ps1" -Exclude "*.Tests.*"
        $privateFunctions.Count | Should -BeGreaterThan 0
    }
}