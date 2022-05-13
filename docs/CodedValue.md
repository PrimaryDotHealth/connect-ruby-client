# PrimaryConnectClient::CodedValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | E.g. 260373001 (SCT), 3006F (CPT), etc. | [optional] |
| **code_set** | **String** | E.g. SCT, LN, NDC, CPT, CVX, etc. | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::CodedValue.new(
  value: 260373001,
  code_set: SCT,
  description: null
)
```

