# PrimaryConnectClient::Specimen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the collected specimen | [optional] |
| **source** | **String** | Source of the specimen | [optional] |
| **body_site** | **String** | Body site from which the specimen was collected | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Specimen.new(
  id: PB124567890,
  source: nares,
  body_site: null
)
```

