# PrimaryConnectClient::Medication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lot_number** | **String** | Lot number product component | [optional] |
| **expiration_date** | **Time** | Product expiration date | [optional] |
| **manufacturer** | [**CodedValue**](CodedValue.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Medication.new(
  lot_number: null,
  expiration_date: 2021-07-10T12:35:45-07:00,
  manufacturer: null
)
```

