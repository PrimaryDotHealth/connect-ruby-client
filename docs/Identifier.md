# PrimaryConnectClient::Identifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **id_type** | **String** | E.g. MRN, EPI, EHRI, NIST, NPI, Payor ID | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Identifier.new(
  id: null,
  id_type: 1234567
)
```

