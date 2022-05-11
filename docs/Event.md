# PrimaryConnectClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **eventable_type** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **eventable_id** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Event.new(
  type: null,
  eventable_type: null,
  created_at: null,
  id: null,
  eventable_id: null
)
```

