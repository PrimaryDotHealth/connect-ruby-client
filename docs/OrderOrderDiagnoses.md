# PrimaryConnectClient::OrderOrderDiagnoses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **type** | **String** | Type of the diagnosis | [optional] |
| **documented_date_time** | **Time** | Timestamp of the the diagnosis was documented | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderOrderDiagnoses.new(
  code: null,
  type: null,
  documented_date_time: null
)
```

