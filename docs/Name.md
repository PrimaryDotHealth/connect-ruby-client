# PrimaryConnectClient::Name

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **middle_name** | **String** | middle name or middle initial. For people with multiple middle names, all their middle names are included in this field. | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Name.new(
  first_name: George,
  last_name: Lopez,
  middle_name: James
)
```

