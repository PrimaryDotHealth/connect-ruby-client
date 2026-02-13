# PrimaryConnectClient::CodedValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | E.g. 260373001 (SCT), 3006F (CPT), etc. | [optional] |
| **code_set** | **String** | E.g. SCT, LN, NDC, CPT, CVX, etc. | [optional] |
| **description** | **String** |  | [optional] |
| **alt_value** | **String** |  | [optional] |
| **alt_code_set** | **String** |  | [optional] |
| **alt_description** | **String** |  | [optional] |
| **code_set_version** | **String** |  | [optional] |
| **alt_code_set_version** | **String** |  | [optional] |
| **original_text** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::CodedValue.new(
  value: 260373001,
  code_set: SCT,
  description: null,
  alt_value: null,
  alt_code_set: null,
  alt_description: null,
  code_set_version: null,
  alt_code_set_version: null,
  original_text: null
)
```

