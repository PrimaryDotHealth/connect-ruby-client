# PrimaryConnectClient::VisitInsured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifiers** | [**Array&lt;Identifier&gt;**](Identifier.md) |  | [optional] |
| **name** | [**Name**](Name.md) |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **relationship** | **String** |  | [optional] |
| **dob** | **String** | Date of Birth | [optional] |
| **sex** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitInsured.new(
  identifiers: null,
  name: null,
  ssn: null,
  relationship: null,
  dob: 1949-12-26,
  sex: null,
  address: null
)
```

