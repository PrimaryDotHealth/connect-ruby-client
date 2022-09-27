# PrimaryConnectClient::Meta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | **String** |  | [optional] |
| **event_date_and_time** | **Time** | ISO-8601 | [optional] |
| **test** | **Boolean** |  | [optional] |
| **source** | [**MetaSource**](MetaSource.md) |  | [optional] |
| **destinations** | [**Array&lt;MetaDestinations&gt;**](MetaDestinations.md) |  | [optional] |
| **message** | [**MetaMessage**](MetaMessage.md) |  | [optional] |
| **transmission** | [**MetaTransmission**](MetaTransmission.md) |  | [optional] |
| **facility_code** | **String** |  | [optional] |
| **echo** | **Object** | Arbitrary key/value pairs to store with the Order | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Meta.new(
  event_type: EVENT_TYPE_NEW,
  event_date_and_time: 2021-07-30T20:27:55Z,
  test: true,
  source: null,
  destinations: null,
  message: null,
  transmission: null,
  facility_code: 123,
  echo: null
)
```

