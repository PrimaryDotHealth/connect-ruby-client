# PrimaryConnectClient::VisitInsurances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | [**VisitPlan**](VisitPlan.md) |  | [optional] |
| **member_number** | **Array&lt;String&gt;** | Patient member number | [optional] |
| **company** | [**VisitCompany**](VisitCompany.md) |  | [optional] |
| **group_number** | **String** | Insurance policy group number | [optional] |
| **group_name** | **String** | Insurance policy group name | [optional] |
| **effective_date** | **String** | YYYY-MM-DD, Effect date of this insurance policy | [optional] |
| **expiration_date** | **String** | YYYY-MM-DD, Expiration date of this insurance policy | [optional] |
| **policy_number** | **String** | Insurance policy number | [optional] |
| **priority** | **String** | The insurance priority sequence | [optional] |
| **agreement_type** | **String** | Type of insurance agreement | [optional] |
| **coverage_type** | **String** | Type of insurance Agreement | [optional] |
| **insured** | [**VisitInsured**](VisitInsured.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitInsurances.new(
  plan: null,
  member_number: null,
  company: null,
  group_number: 123456789,
  group_name: null,
  effective_date: 2021-01-01,
  expiration_date: 2050-01-01,
  policy_number: 987654321,
  priority: null,
  agreement_type: null,
  coverage_type: null,
  insured: null
)
```

