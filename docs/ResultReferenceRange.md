# PrimaryConnectClient::ResultReferenceRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **low** | **Integer** | Lower bound for a normal result | [optional] |
| **high** | **Integer** | Upper bound for a normal result | [optional] |
| **text** | **String** | Normal value for non-numeric results | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::ResultReferenceRange.new(
  low: null,
  high: null,
  text: null
)
```

