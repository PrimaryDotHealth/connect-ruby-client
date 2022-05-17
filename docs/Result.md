# PrimaryConnectClient::Result

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **related_group_id** | **Array&lt;String&gt;** | ID to group separate result components | [optional] |
| **specimen** | [**Specimen**](Specimen.md) |  | [optional] |
| **value** | **String** | Value of the result component | [optional] |
| **value_type** | **String** | Data type for the result value | [optional] |
| **completion_date_time** | **Time** | Timestamp when the results were composed into a report and released. | [optional] |
| **report** | [**ResultReport**](ResultReport.md) |  | [optional] |
| **units** | **String** | Units of the result | [optional] |
| **notes** | **Array&lt;String&gt;** | Notes about the result component/observation | [optional] |
| **abnormal_flag** | **String** | Indication of whether the result was abnormal | [optional] |
| **status** | **String** | Current status of the result | [optional] |
| **primary_results_interpreter** | [**Provider**](Provider.md) |  | [optional] |
| **producer** | **Object** |  | [optional] |
| **performer** | [**Provider**](Provider.md) |  | [optional] |
| **reference_range** | [**ResultReferenceRange**](ResultReferenceRange.md) |  | [optional] |
| **observation_method** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **producer_order_id** | **String** | Unique ID generated by resulting entity | [optional] |
| **finding_value** | [**CodedValue**](CodedValue.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Result.new(
  code: null,
  related_group_id: null,
  specimen: null,
  value: negative,
  value_type: STRING,
  completion_date_time: 2021-07-10T12:35:45-07:00,
  report: null,
  units: null,
  notes: null,
  abnormal_flag: null,
  status: null,
  primary_results_interpreter: null,
  producer: null,
  performer: null,
  reference_range: null,
  observation_method: null,
  producer_order_id: 12345678,
  finding_value: null
)
```
