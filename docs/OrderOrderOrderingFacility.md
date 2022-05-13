# PrimaryConnectClient::OrderOrderOrderingFacility

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderOrderOrderingFacility.new(
  name: Test Facility,
  address: null,
  phone_numbers: null
)
```

