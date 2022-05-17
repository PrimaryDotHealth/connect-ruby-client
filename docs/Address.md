# PrimaryConnectClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address1** | **String** |  | [optional] |
| **street_address2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state_code** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **county** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **time_zone** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Address.new(
  street_address1: 123 Sesame St.,
  street_address2: Unit 456,
  city: Springfield,
  state_code: OH,
  zip: 12345,
  county: null,
  country_code: US,
  time_zone: America/Los_Angeles
)
```

