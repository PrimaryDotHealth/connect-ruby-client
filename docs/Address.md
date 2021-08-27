# PrimaryConnectClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address_1** | **String** |  | [optional] |
| **street_address_2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state_code** | **String** |  | [optional] |
| **zip** | **String** |  | [optional] |
| **county** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Address.new(
  street_address_1: null,
  street_address_2: null,
  city: null,
  state_code: null,
  zip: null,
  county: null,
  country_code: null
)
```

