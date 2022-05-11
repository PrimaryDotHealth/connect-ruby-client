# PrimaryConnectClient::ResultReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_type** | **String** | Report MIME type | [optional] |
| **data** | **String** | Base64 encoded report | [optional] |
| **url** | **String** | Report URL redirect | [optional] |

## Example

```ruby
require 'primary_connect_client'

instance = PrimaryConnectClient::ResultReport.new(
  file_type: application/pdf,
  data: &lt;BASE64 ENCODED PDF&gt;,
  url: https://example.com/report?12345
)
```

