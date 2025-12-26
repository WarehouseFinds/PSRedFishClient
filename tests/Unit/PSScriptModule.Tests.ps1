# Generate Pester Unit tests for the module
Describe "PSScriptModule Unit Tests" {
    It "Have at least 1 Public Function" {
        $publicFunctions = Get-ChildItem -Path "$moduleSourcePath\Public\*.ps1" -Exclude "*.Tests.*"
        $publicFunctions.Count | Should -BeGreaterThan 0
    }

    It "Have at least 1 Private Function" {
        $privateFunctions = Get-ChildItem -Path "$moduleSourcePath\Private\*.ps1" -Exclude "*.Tests.*"
        $privateFunctions.Count | Should -BeGreaterThan 0
    }
}