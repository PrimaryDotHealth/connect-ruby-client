# PrimaryConnectClient::VisitCompany

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | [**Identifier**](Identifier.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitCompany.new(
  identifier: null,
  name: null,
  address: null,
  phone_numbers: null
)
```

