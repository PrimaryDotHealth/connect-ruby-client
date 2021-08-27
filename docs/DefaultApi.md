# PrimaryConnectClient::DefaultApi

All URIs are relative to *https://connect.primary.health*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_order**](DefaultApi.md#create_order) | **POST** /api/v1/orders | create order |
| [**get_order**](DefaultApi.md#get_order) | **GET** /api/v1/orders/{id} | show order |
| [**get_result**](DefaultApi.md#get_result) | **GET** /api/v1/orders/{order_id}/results/{id} | show result |
| [**list_events**](DefaultApi.md#list_events) | **GET** /api/v1/events | list events |
| [**list_orders**](DefaultApi.md#list_orders) | **GET** /api/v1/orders | list orders |
| [**list_results**](DefaultApi.md#list_results) | **GET** /api/v1/orders/{order_id}/results | list results |


## create_order

> create_order(opts)

create order

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new
opts = {
  order: PrimaryConnectClient::Order.new # Order | 
}

begin
  # create order
  api_instance.create_order(opts)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_order_with_http_info(opts)

```ruby
begin
  # create order
  data, status_code, headers = api_instance.create_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**Order**](Order.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_order

> get_order(id)

show order

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new
id = 'id_example' # String | id

begin
  # show order
  api_instance.get_order(id)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_order: #{e}"
end
```

#### Using the get_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_order_with_http_info(id)

```ruby
begin
  # show order
  data, status_code, headers = api_instance.get_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_result

> get_result(order_id, id)

show result

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new
order_id = 'order_id_example' # String | Order id
id = 'id_example' # String | id

begin
  # show result
  api_instance.get_result(order_id, id)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_result: #{e}"
end
```

#### Using the get_result_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_result_with_http_info(order_id, id)

```ruby
begin
  # show result
  data, status_code, headers = api_instance.get_result_with_http_info(order_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Order id |  |
| **id** | **String** | id |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_events

> list_events(opts)

list events

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new
opts = {
  last_event_ulid: 'last_event_ulid_example', # String | Paginate events with event ulid
  event_types: 'event_types_example' # String | Filter event_types, comma delimited
}

begin
  # list events
  api_instance.list_events(opts)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # list events
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_event_ulid** | **String** | Paginate events with event ulid | [optional] |
| **event_types** | **String** | Filter event_types, comma delimited | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_orders

> list_orders

list orders

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new

begin
  # list orders
  api_instance.list_orders
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_orders: #{e}"
end
```

#### Using the list_orders_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_orders_with_http_info

```ruby
begin
  # list orders
  data, status_code, headers = api_instance.list_orders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_orders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_results

> list_results(order_id)

list results

### Examples

```ruby
require 'time'
require 'primary_connect_client'
# setup authorization
PrimaryConnectClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PrimaryConnectClient::DefaultApi.new
order_id = 'order_id_example' # String | Order id

begin
  # list results
  api_instance.list_results(order_id)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_results: #{e}"
end
```

#### Using the list_results_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_results_with_http_info(order_id)

```ruby
begin
  # list results
  data, status_code, headers = api_instance.list_results_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Order id |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

