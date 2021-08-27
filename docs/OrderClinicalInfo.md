# PrimaryConnectClient::OrderClinicalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code for the information element | [optional] |
| **code_set** | **String** | Code set used to identify the information element.  Codeset will be blank for system-defined codes. LOINC is used for a subset of AOE questions. | [optional] |
| **description** | **String** | Description of the information element.  For AOEs, this is typically the text of the AOE question | [optional] |
| **value** | **String** | Value of the information element.  For AOEs, this is typically the full answer | [optional] |
| **units** | **String** | Units of the value.  If the Value is a time range, this may be \&quot;WK\&quot; | [optional] |
| **abbreviation** | **String** | Abbreviation of the value of the information element.  Typically only present for text answer AOEs | [optional] |
| **notes** | **Array&lt;String&gt;** | Notes related to the clinical info | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderClinicalInfo.new(
  code: null,
  code_set: null,
  description: null,
  value: null,
  units: null,
  abbreviation: null,
  notes: null
)
```

