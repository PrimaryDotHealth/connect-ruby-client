# PrimaryConnectClient::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifiers** | [**Array&lt;Identifier&gt;**](Identifier.md) | List of IDs and types that identify the device | [optional] |
| **manufacturer** | **String** |  | [optional] |
| **model_number** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **location** | [**Location**](Location.md) |  | [optional] |
| **config** | **Object** | Arbitrary key/value pairs for Device specific use | [optional] |
| **model_name** | **String** |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Device.new(
  identifiers: null,
  manufacturer: null,
  model_number: null,
  serial_number: null,
  address: null,
  location: null,
  config: {&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;},
  model_name: null
)
```

