# PrimaryConnectClient::Candidates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Error message | [optional] |
| **candidates** | [**Array&lt;Patient&gt;**](Patient.md) | List of possible matches for the query | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::Candidates.new(
  error: null,
  candidates: null
)
```

