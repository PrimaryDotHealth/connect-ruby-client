# PrimaryConnectClient::AccessionOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accession_date_time** | **Time** | Timestamp when the specimen was received by the destination. (ISO-8601) | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::AccessionOrder.new(
  accession_date_time: 2021-07-10T12:35:45-07:00
)
```

