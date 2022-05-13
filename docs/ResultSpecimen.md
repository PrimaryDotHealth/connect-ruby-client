# PrimaryConnectClient::ResultSpecimen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the collected specimen | [optional] |
| **source** | **String** | Source of the specimen | [optional] |
| **body_site** | **String** | Body site from which the specimen was collected | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::ResultSpecimen.new(
  id: PB123456789,
  source: nasal,
  body_site: null
)
```

