# PrimaryConnectClient::VisitInsured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifiers** | [**Array&lt;Identifier&gt;**](Identifier.md) |  | [optional] |
| **name** | [**Name**](Name.md) |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **relationship** | [**OneOfstringinteger**](OneOfstringinteger.md) |  | [optional] |
| **dob** | **String** |  | [optional] |
| **sex** | [**OneOfstringinteger**](OneOfstringinteger.md) |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitInsured.new(
  identifiers: null,
  name: null,
  ssn: null,
  relationship: null,
  dob: null,
  sex: null,
  address: null
)
```

