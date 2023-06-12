# PrimaryConnectClient::MetaDestination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **config** | **Object** | Arbitrary key/value pairs for Lab specific use | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::MetaDestination.new(
  id: 01FXNPV4TCTGRSV4EGTJMW0D0Y,
  name: Sample Lab,
  config: {&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;}
)
```

