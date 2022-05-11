# PrimaryConnectClient::VisitPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | [**Identifier**](Identifier.md) |  | [optional] |
| **name** | **String** | Name of insurance plan | [optional] |
| **type** | **String** | Type of insurance plan | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitPlan.new(
  identifier: null,
  name: Insurance Plan name,
  type: Insurance Plan Type
)
```

