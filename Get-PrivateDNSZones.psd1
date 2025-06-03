@{
    ModuleVersion = '1.0.0'
    GUID = "a01175dd-905d-46a6-ab33-00ca9fc4d3e8"
    Author = 'TheLastHorcrux'
    CompanyName = 'Hogwarts'
    Copyright = '(c) 2025 [Naveed Khan]. All rights reserved.'
    Description = 'A PowerShell module for retrieving and managing Azure Private DNS Zones linked to Virtual Networks.'
    PowerShellVersion = '5.1'
    RequiredModules = @('Az')
    FunctionsToExport = @('Get-PrivateDNSZoneDetails')
    AliasesToExport = @('Get-PrivateDNSZones')
    CmdletsToExport = @()
    VariablesToExport = '*'
    PrivateData = @{
        PSData = @{
            Tags = @('Azure', 'DNS', 'PrivateDNS', 'VNet')
            ProjectUri = 'https://github.com/khannaveed2020/Get-PrivateDNSZones'
            LicenseUri = 'https://github.com/khannaveed2020/Get-PrivateDNSZones/blob/main/LICENSE'
            ReleaseNotes = 'Initial release'
        }
    }
}