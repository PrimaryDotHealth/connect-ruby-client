# PrimaryConnectClient::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | E.g. Clinic, Department, Home, Nursing Unit, Provider&#39;s Office, Phone | [optional] |
| **facility** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **room** | **String** |  | [optional] |
| **bed** | **String** |  | [optional] |
| **floor** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Location.new(
  type: Clinic,
  facility: Community Hospital,
  department: null,
  room: 136,
  bed: B,
  floor: 10
)
```

