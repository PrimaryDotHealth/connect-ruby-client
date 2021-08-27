# PrimaryConnectClient::PatientDemographics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**Name**](Name.md) |  | [optional] |
| **dob** | **String** |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **sex** | [**OneOfstring**](OneOfstring.md) |  | [optional] |
| **gender** | [**OneOfstring**](OneOfstring.md) |  | [optional] |
| **sexual_orientation** | [**OneOfstring**](OneOfstring.md) |  | [optional] |
| **race** | **Array&lt;String&gt;** |  | [optional] |
| **race_detail** | **Array&lt;String&gt;** |  | [optional] |
| **ethnicity** | [**OneOfstring**](OneOfstring.md) |  | [optional] |
| **ethnicity_detail** | **Array&lt;String&gt;** |  | [optional] |
| **marital_status** | [**OneOfstring**](OneOfstring.md) |  | [optional] |
| **is_deceased** | **Boolean** |  | [optional] |
| **death_date_time** | **Time** | ISO 8601 | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] |
| **email_addresses** | **Array&lt;String&gt;** |  | [optional] |
| **language_code** | **String** |  | [optional] |
| **citizenships** | **Array&lt;String&gt;** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::PatientDemographics.new(
  name: null,
  dob: null,
  ssn: null,
  sex: null,
  gender: null,
  sexual_orientation: null,
  race: null,
  race_detail: null,
  ethnicity: null,
  ethnicity_detail: null,
  marital_status: null,
  is_deceased: null,
  death_date_time: null,
  phone_numbers: null,
  email_addresses: null,
  language_code: null,
  citizenships: null,
  address: null
)
```

