# Get-PrivateDNSZones

A PowerShell module to retrieve private DNS zones linked to an Azure Virtual Network.

## Installation

```powershell
Install-Module -Name Get-PrivateDNSZones -Scope CurrentUser
```

## Prerequisites

- PowerShell 5.1 or later
- Azure PowerShell modules:
  - Az.Accounts
  - Az.PrivateDns

## Usage

1. First, ensure you're connected to Azure:

```powershell
Connect-AzAccount
```

2. Use the module to get private DNS zones linked to a VNet:

```powershell
$vnetResourceId = "/subscriptions/your-subscription-id/resourceGroups/your-rg/providers/Microsoft.Network/virtualNetworks/your-vnet"
Get-PrivateDNSZones -VNetResourceId $vnetResourceId
```

## Output

The cmdlet returns an array of objects with the following properties:
- ZoneName: Name of the private DNS zone
- ResourceGroup: Resource group containing the DNS zone
- ZoneId: Resource ID of the DNS zone
- LinkName: Name of the VNet link
- LinkId: Resource ID of the VNet link

## Example

```powershell
$vnetResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/my-rg/providers/Microsoft.Network/virtualNetworks/my-vnet"
$linkedZones = Get-PrivateDNSZones -VNetResourceId $vnetResourceId
$linkedZones | Format-Table -AutoSize
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details. 