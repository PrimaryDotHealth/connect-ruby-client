# PrimaryConnectClient::OrderDiagnoses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code for the diagnosis | [optional] |
| **code_set** | [**OneOfstring**](OneOfstring.md) | Code set used to identify the diagnosis | [optional] |
| **name** | **String** | Name of the diagnosis | [optional] |
| **type** | [**OneOfstring**](OneOfstring.md) | Type of the diagnosis | [optional] |
| **documented_date_time** | **Time** | Timestamp of the the diagnosis was documented | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderDiagnoses.new(
  code: null,
  code_set: null,
  name: null,
  type: null,
  documented_date_time: null
)
```

