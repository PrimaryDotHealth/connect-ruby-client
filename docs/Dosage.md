# PrimaryConnectClient::Dosage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **route** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **method** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **dose** | **String** | Amount of medication per dose | [optional] |
| **units** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **series_number** | **String** | Dose number administered within series_recommended | [optional] |
| **series_recommended** | **String** | Number of recommended doses in a prescribed series | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Dosage.new(
  site: null,
  route: null,
  method: null,
  dose: null,
  units: null,
  series_number: null,
  series_recommended: null
)
```

