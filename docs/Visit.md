# PrimaryConnectClient::Visit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **visit_number** | **String** | Unique ID of a single visit | [optional] |
| **account_number** | **String** | An ID that can span several visits often related to the same issue - pregnancy, surgeries, research study, etc. | [optional] |
| **patient_class** | **String** | Patient class is used in many EHRs to determine where to put the patient. E.g. Inpatient, Outpatient, Emergency | [optional] |
| **visit_date_time** | **Time** | Timestamp of visit or the arrival time of the visit or admission (ISO-8601) | [optional] |
| **attending_provider** | [**Provider**](Provider.md) |  | [optional] |
| **consulting_provider** | [**Provider**](Provider.md) |  | [optional] |
| **referring_provider** | [**Provider**](Provider.md) |  | [optional] |
| **guarantor** | [**VisitGuarantor**](VisitGuarantor.md) |  | [optional] |
| **insurances** | [**Array&lt;VisitInsurances&gt;**](VisitInsurances.md) | List of insurance coverages for the patient | [optional] |
| **location** | [**Location**](Location.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Visit.new(
  visit_number: 12345,
  account_number: null,
  patient_class: null,
  visit_date_time: 2021-07-10T12:20:11-07:00,
  attending_provider: null,
  consulting_provider: null,
  referring_provider: null,
  guarantor: null,
  insurances: null,
  location: null
)
```

