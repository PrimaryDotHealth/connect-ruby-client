# PrimaryConnectClient::MetaProvenances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**MetaDestination**](MetaDestination.md) |  | [optional] |
| **placer_id** | **String** |  | [optional] |
| **rerouted_at** | **Time** | ISO-8601 | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::MetaProvenances.new(
  destination: null,
  placer_id: ABC123,
  rerouted_at: 2021-07-30T20:27:55Z
)
```

