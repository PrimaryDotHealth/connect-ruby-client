# PrimaryConnectClient::OrderPatient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifiers** | [**Array&lt;Identifier&gt;**](Identifier.md) | List of IDs and types that identify the patient | [optional] |
| **demographics** | [**Demographics**](Demographics.md) |  | [optional] |
| **notes** | **Array&lt;String&gt;** | Patient-level notes | [optional] |
| **contacts** | [**Array&lt;OrderPatientContacts&gt;**](OrderPatientContacts.md) |  | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::OrderPatient.new(
  identifiers: null,
  demographics: null,
  notes: null,
  contacts: null
)
```

