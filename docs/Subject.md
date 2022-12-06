# PrimaryConnectClient::Subject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patient** | [**Patient**](Patient.md) |  | [optional] |
| **device** | [**Device**](Device.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Subject.new(
  patient: null,
  device: null
)
```

