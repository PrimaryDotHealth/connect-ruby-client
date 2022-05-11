# PrimaryConnectClient::VisitGuarantorEmployer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitGuarantorEmployer.new(
  name: ABC Inc.,
  phone_numbers: null,
  address: null
)
```

