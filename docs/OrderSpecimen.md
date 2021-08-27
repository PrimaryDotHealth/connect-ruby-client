# PrimaryConnectClient::OrderSpecimen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the collected specimen | [optional] |
| **source** | **String** | TODO: Should we use code/code_set for this?  Source of the specimen | [optional] |
| **body_site** | **String** | TODO: Should we use code/code_set for this?  Body site from which the specimen was collected | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderSpecimen.new(
  id: null,
  source: null,
  body_site: null
)
```

