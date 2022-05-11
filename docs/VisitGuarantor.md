# PrimaryConnectClient::VisitGuarantor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | Number of the guarantor (?) | [optional] |
| **name** | [**Name**](Name.md) |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **dob** | **String** | Date of Birth | [optional] |
| **sex** | **String** |  | [optional] |
| **spouse** | [**Name**](Name.md) |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **email_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **type** | **String** |  | [optional] |
| **relation_to_patient** | **String** |  | [optional] |
| **employer** | [**VisitGuarantorEmployer**](VisitGuarantorEmployer.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitGuarantor.new(
  number: null,
  name: null,
  ssn: null,
  dob: 1952-09-03,
  sex: null,
  spouse: null,
  address: null,
  phone_numbers: null,
  email_addresses: null,
  type: null,
  relation_to_patient: null,
  employer: null
)
```

