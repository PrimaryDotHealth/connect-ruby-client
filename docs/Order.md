# PrimaryConnectClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patient** | [**Patient**](Patient.md) |  | [optional] |
| **subject** | [**Subject**](Subject.md) |  | [optional] |
| **visit** | [**Visit**](Visit.md) |  | [optional] |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **order** | [**OrderOrder**](OrderOrder.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Order.new(
  patient: null,
  subject: null,
  visit: null,
  meta: null,
  order: null
)
```

