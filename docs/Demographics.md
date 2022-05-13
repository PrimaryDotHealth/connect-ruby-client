# PrimaryConnectClient::Demographics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**Name**](Name.md) |  | [optional] |
| **dob** | **String** |  | [optional] |
| **ssn** | **String** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **sexual_orientation** | **String** |  | [optional] |
| **races** | **Array&lt;String&gt;** |  | [optional] |
| **race_details** | **Array&lt;String&gt;** |  | [optional] |
| **ethnicity** | **String** |  | [optional] |
| **ethnicity_detail** | **Array&lt;String&gt;** |  | [optional] |
| **marital_status** | **String** |  | [optional] |
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

instance = PrimaryConnectClient::Demographics.new(
  name: null,
  dob: 1992-07-23,
  ssn: null,
  sex: null,
  gender: null,
  sexual_orientation: null,
  races: null,
  race_details: null,
  ethnicity: null,
  ethnicity_detail: null,
  marital_status: null,
  is_deceased: null,
  death_date_time: null,
  phone_numbers: null,
  email_addresses: null,
  language_code: en,
  citizenships: null,
  address: null
)
```

