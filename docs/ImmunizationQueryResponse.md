# PrimaryConnectClient::ImmunizationQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**Meta**](Meta.md) |  | [optional] |
| **patient** | [**Patient**](Patient.md) |  | [optional] |
| **medication_administrations** | [**Array&lt;MedicationAdministration&gt;**](MedicationAdministration.md) | List of Medication Administrations | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::ImmunizationQueryResponse.new(
  meta: null,
  patient: null,
  medication_administrations: null
)
```

