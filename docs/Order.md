# PrimaryConnectClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the order assigned by the placing system | [optional] |
| **application_order_id** | **String** | ID assigned by the application fulfilling the order | [optional] |
| **status** | [**OneOfstring**](OneOfstring.md) | The status of an order. | [optional] |
| **transaction_date_time** | **Time** | Timestamp when the order was placed | [optional] |
| **collection_date_time** | **Time** | Timestamp when the specimen was collected | [optional] |
| **completion_date_time** | **Time** | Timestamp when the results were composed into a report and released. | [optional] |
| **expiration_date** | **String** | YYYY-MM-DD, Date when the order becomes invalid | [optional] |
| **specimen** | [**OrderSpecimen**](OrderSpecimen.md) |  | [optional] |
| **procedure** | [**OrderProcedure**](OrderProcedure.md) |  | [optional] |
| **ordering_provider** | [**Provider**](Provider.md) |  | [optional] |
| **result_copy_providers** | [**Array&lt;Provider&gt;**](Provider.md) | Array of providers to be copied on the results | [optional] |
| **ordering_facility** | [**OrderOrderingFacility**](OrderOrderingFacility.md) |  | [optional] |
| **priority** | [**OneOfstring**](OneOfstring.md) | Priority of the order | [optional] |
| **diagnoses** | [**Array&lt;OrderDiagnoses&gt;**](OrderDiagnoses.md) | List of diagnoses associated with this order | [optional] |
| **clinical_comments** | **String** | Clinically relevant comments regarding the order | [optional] |
| **notes** | **Array&lt;String&gt;** | Order-level notes | [optional] |
| **clinical_info** | [**Array&lt;OrderClinicalInfo&gt;**](OrderClinicalInfo.md) | List of supplementary clinical information associated with the order. Often these are answers to Ask at Order Entry (AOE) questions. | [optional] |
| **results_status** | [**OneOfstring**](OneOfstring.md) | Current overall status of the order | [optional] |
| **response_flag** | [**OneOfstring**](OneOfstring.md) | Specificity of the response requested from the receiving system | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Order.new(
  id: null,
  application_order_id: null,
  status: null,
  transaction_date_time: null,
  collection_date_time: null,
  completion_date_time: null,
  expiration_date: null,
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
  response_flag: null
)
```

