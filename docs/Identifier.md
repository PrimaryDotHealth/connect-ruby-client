# PrimaryConnectClient::Identifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **id_type** | **String** | The identifier type. For identifiers parsed from HL7 (e.g. IIS query responses), the CX-5 type code from HL7 table 0203, such as MR, SR or PI. Elsewhere, a label such as MRN, EPI, EHRI, NIST, NPI or Payor ID. | [optional] |
| **assigning_authority** | **String** | The CX-4 assigning authority namespace for identifiers parsed from HL7, such as CAA or NMSIIS. Empty when the sender omits it. | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Identifier.new(
  id: null,
  id_type: SR,
  assigning_authority: NMSIIS
)
```

