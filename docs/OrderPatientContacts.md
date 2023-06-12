# PrimaryConnectClient::OrderPatientContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**Name**](Name.md) |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **relation_to_patient** | **String** | Personal relationship to the patient | [optional] |
| **email_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **roles** | **Array&lt;String&gt;** | e.g. Employer, Emergency Contact | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderPatientContacts.new(
  name: null,
  address: null,
  phone_numbers: null,
  relation_to_patient: null,
  email_addresses: null,
  roles: null
)
```

