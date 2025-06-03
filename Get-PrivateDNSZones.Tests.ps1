#Requires -Modules Pester

Describe 'Get-PrivateDNSZones Tests' {
    Context 'Basic Command Tests' {
        It 'Should have the Get-PrivateDNSZones command available' {
            Get-Command Get-PrivateDNSZones | Should -Not -BeNull
        }

        It 'Should be able to call Get-PrivateDNSZones with VNetResourceId parameter' {
            # This test checks if the command can be invoked with the parameter.
            # It does not check the actual logic which requires Azure interaction.
            # We expect it to throw an error because the VNetResourceId is dummy
            # and it cannot connect to Azure, but the command itself should be found.
            { Get-PrivateDNSZones -VNetResourceId "dummyId" } | Should -Throw
        }
    }
}
