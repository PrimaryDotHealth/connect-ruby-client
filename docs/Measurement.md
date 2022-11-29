# PrimaryConnectClient::Measurement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **subject** | [**Subject**](Subject.md) |  | [optional] |
| **metrics** | [**Array&lt;Result&gt;**](Result.md) | List of result components | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Measurement.new(
  meta: null,
  subject: null,
  metrics: null
)
```

