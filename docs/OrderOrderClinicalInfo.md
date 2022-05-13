# PrimaryConnectClient::OrderOrderClinicalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**CodedValue**](CodedValue.md) |  | [optional] |
| **value** | **String** | Value of the information element.  For AOEs, this is typically the full answer | [optional] |
| **units** | **String** | Units of the value.  If the Value is a time range, this may be \&quot;WK\&quot; | [optional] |
| **abbreviation** | **String** | Abbreviation of the value of the information element.  Typically only present for text answer AOEs | [optional] |
| **notes** | **Array&lt;String&gt;** | Notes related to the clinical info | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderOrderClinicalInfo.new(
  code: null,
  value: Yes,
  units: null,
  abbreviation: null,
  notes: null
)
```

