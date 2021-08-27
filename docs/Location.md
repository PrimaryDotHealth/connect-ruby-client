# PrimaryConnectClient::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | E.g. Clinic, Department, Home, Nursing Unit, Provider&#39;s Office, Phone | [optional] |
| **facility** | **String** | E.g. Community Hospital | [optional] |
| **department** | **String** |  | [optional] |
| **room** | **String** | E.g. 136 | [optional] |
| **bed** | **String** | E.g B | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Location.new(
  type: null,
  facility: null,
  department: null,
  room: null,
  bed: null
)
```

