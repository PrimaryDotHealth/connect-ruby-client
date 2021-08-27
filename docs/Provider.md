# PrimaryConnectClient::Provider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | [**Identifier**](Identifier.md) |  | [optional] |
| **npi** | **String** |  | [optional] |
| **name** | [**Name**](Name.md) |  | [optional] |
| **credentials** | **Array&lt;String&gt;** | List of credentials for the provider.  e.g. MD, PhD | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **email_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **location** | [**Location**](Location.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Provider.new(
  identifier: null,
  npi: null,
  name: null,
  credentials: null,
  address: null,
  email_addresses: null,
  phone_numbers: null,
  location: null
)
```

