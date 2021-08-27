# PrimaryConnectClient::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ulid** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **from** | [**MessageDestination**](MessageDestination.md) |  | [optional] |
| **to** | [**MessageDestination**](MessageDestination.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Message.new(
  ulid: null,
  type: null,
  from: null,
  to: null
)
```

