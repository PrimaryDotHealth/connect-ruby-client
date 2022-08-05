# PrimaryConnectClient::MedicationAdministration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | [**Identifier**](Identifier.md) |  | [optional] |
| **administration_codes** | [**Array&lt;CodedValue&gt;**](CodedValue.md) | Codes for the medication administration | [optional] |
| **administration_start_time** | **Time** | Administration start date of medication | [optional] |
| **administration_end_time** | **Time** | Administration end date of medication | [optional] |
| **medication** | [**Medication**](Medication.md) |  | [optional] |
| **dosage** | [**Dosage**](Dosage.md) |  | [optional] |
| **refusal_reason** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **administering_provider** | [**Provider**](Provider.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::MedicationAdministration.new(
  identifier: null,
  administration_codes: null,
  administration_start_time: 2021-07-10T12:35:45-07:00,
  administration_end_time: 2021-07-10T12:35:45-07:00,
  medication: null,
  dosage: null,
  refusal_reason: null,
  administering_provider: null
)
```

