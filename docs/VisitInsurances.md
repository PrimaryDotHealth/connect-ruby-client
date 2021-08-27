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
| **priority** | [**OneOfstringinteger**](OneOfstringinteger.md) | The insurance priority sequence | [optional] |
| **agreement_type** | [**OneOfstringinteger**](OneOfstringinteger.md) | Type of insurance agreement | [optional] |
| **coverage_type** | [**OneOfstringinteger**](OneOfstringinteger.md) | Type of insurance Agreement | [optional] |
| **insured** | [**VisitInsured**](VisitInsured.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::VisitInsurances.new(
  plan: null,
  member_number: null,
  company: null,
  group_number: null,
  group_name: null,
  effective_date: null,
  expiration_date: null,
  policy_number: null,
  priority: null,
  agreement_type: null,
  coverage_type: null,
  insured: null
)
```

