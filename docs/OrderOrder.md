# PrimaryConnectClient::OrderOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the order assigned by the placing system | [optional] |
| **application_order_id** | **String** | ID assigned by the application fulfilling the order | [optional] |
| **status** | **String** | The status of an order. | [optional] |
| **transaction_date_time** | **Time** | Timestamp when the order was placed | [optional] |
| **collection_date_time** | **Time** | Timestamp when the specimen was collected | [optional] |
| **completion_date_time** | **Time** | Timestamp when the results were composed into a report and released. | [optional] |
| **expiration_date** | **String** | YYYY-MM-DD, Date when the order becomes invalid | [optional] |
| **specimen** | [**Specimen**](Specimen.md) |  | [optional] |
| **procedure** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **ordering_provider** | [**Provider**](Provider.md) |  | [optional] |
| **result_copy_providers** | [**Array&lt;Provider&gt;**](Provider.md) | Array of providers to be copied on the results | [optional] |
| **ordering_facility** | [**OrderOrderOrderingFacility**](OrderOrderOrderingFacility.md) |  | [optional] |
| **priority** | **String** | Priority of the order | [optional] |
| **diagnoses** | [**Array&lt;OrderOrderDiagnoses&gt;**](OrderOrderDiagnoses.md) | List of diagnoses associated with this order | [optional] |
| **clinical_comments** | **String** | Clinically relevant comments regarding the order | [optional] |
| **notes** | **Array&lt;String&gt;** | Order-level notes | [optional] |
| **clinical_info** | [**Array&lt;OrderOrderClinicalInfo&gt;**](OrderOrderClinicalInfo.md) | List of supplementary clinical information associated with the order. Often these are answers to Ask at Order Entry (AOE) questions. | [optional] |
| **results_status** | **String** | Current overall status of the order | [optional] |
| **response_flag** | **String** | Specificity of the response requested from the receiving system | [optional] |
| **external_ids** | [**Array&lt;Identifier&gt;**](Identifier.md) |  | [optional] |
| **results** | [**Array&lt;Result&gt;**](Result.md) | List of result components | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderOrder.new(
  id: 12345,
  application_order_id: 67890,
  status: null,
  transaction_date_time: 2021-07-10T12:35:45-07:00,
  collection_date_time: 2021-07-10T12:35:45-07:00,
  completion_date_time: 2021-07-10T12:35:45-07:00,
  expiration_date: 2022-05-23,
  specimen: null,
  procedure: null,
  ordering_provider: null,
  result_copy_providers: null,
  ordering_facility: null,
  priority: null,
  diagnoses: null,
  clinical_comments: null,
  notes: null,
  clinical_info: null,
  results_status: null,
  response_flag: null,
  external_ids: null,
  results: null
)
```

