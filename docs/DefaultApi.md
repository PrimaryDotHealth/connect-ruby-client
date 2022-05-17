# PrimaryConnectClient::DefaultApi

All URIs are relative to *https://connect.primary.health*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_order**](DefaultApi.md#create_order) | **POST** /api/v1/orders | create order |
| [**create_result**](DefaultApi.md#create_result) | **POST** /api/v1/orders/{order_id}/results | create result |
| [**get_lab_report**](DefaultApi.md#get_lab_report) | **GET** /api/v1/results/{result_id}/lab_report | show lab report |
| [**get_order**](DefaultApi.md#get_order) | **GET** /api/v1/orders/{id} | show order |
| [**list_events**](DefaultApi.md#list_events) | **GET** /api/v1/events | list events |
| [**list_orders**](DefaultApi.md#list_orders) | **GET** /api/v1/orders | list orders |
| [**list_results**](DefaultApi.md#list_results) | **GET** /api/v1/orders/{order_id}/results | list results |
| [**update_order**](DefaultApi.md#update_order) | **PUT** /api/v1/orders/{id} | update order |


## create_order

> <OrderIds> create_order(opts)

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
  result = api_instance.create_order(opts)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderIds>, Integer, Hash)> create_order_with_http_info(opts)

```ruby
begin
  # create order
  data, status_code, headers = api_instance.create_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderIds>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**Order**](Order.md) |  | [optional] |

### Return type

[**OrderIds**](OrderIds.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_result

> <ResultIds> create_result(order_id, opts)

create result

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
order_id = '01FGD44Q6MVCG2VNSMCVX5ZCT6' # String | Order id
opts = {
  result: PrimaryConnectClient::Result.new # Result | 
}

begin
  # create result
  result = api_instance.create_result(order_id, opts)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_result: #{e}"
end
```

#### Using the create_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultIds>, Integer, Hash)> create_result_with_http_info(order_id, opts)

```ruby
begin
  # create result
  data, status_code, headers = api_instance.create_result_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultIds>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->create_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Order id |  |
| **result** | [**Result**](Result.md) |  | [optional] |

### Return type

[**ResultIds**](ResultIds.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_lab_report

> get_lab_report(result_id)

show lab report

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
result_id = '01FGD44Q6MVCG2VNSMC4ZMOTQM' # String | Result id

begin
  # show lab report
  api_instance.get_lab_report(result_id)
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_lab_report: #{e}"
end
```

#### Using the get_lab_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_lab_report_with_http_info(result_id)

```ruby
begin
  # show lab report
  data, status_code, headers = api_instance.get_lab_report_with_http_info(result_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_lab_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result_id** | **String** | Result id |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order

> <OrderWithEventErrors> get_order(id)

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
  result = api_instance.get_order(id)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_order: #{e}"
end
```

#### Using the get_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderWithEventErrors>, Integer, Hash)> get_order_with_http_info(id)

```ruby
begin
  # show order
  data, status_code, headers = api_instance.get_order_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderWithEventErrors>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->get_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |

### Return type

[**OrderWithEventErrors**](OrderWithEventErrors.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <Events> list_events(opts)

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
  last_event_id: '01FGD30NTPNNZE9MKGMWZGHGTZ', # String | Paginate events with event id. 26 character, sortable id.
  event_types: 'OrderCreated,OrderComplete' # String | Filter event_types, comma delimited. [OrderComplete, OrderCreated, OrderError, OrderResulted, OrderUpdated, ResultError, SpecimenReceived]
}

begin
  # list events
  result = api_instance.list_events(opts)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Events>, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # list events
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Events>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_event_id** | **String** | Paginate events with event id. 26 character, sortable id. | [optional] |
| **event_types** | **String** | Filter event_types, comma delimited. [OrderComplete, OrderCreated, OrderError, OrderResulted, OrderUpdated, ResultError, SpecimenReceived] | [optional] |

### Return type

[**Events**](Events.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orders

> <Orders> list_orders(opts)

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
opts = {
  last_order_id: '01FGD30NTPNNZE9MKGMWZGHGTZ', # String | Paginate orders with order id. 26 character, sortable id.
  state: 'new,resulted' # String | Filter orders by state, comma delimited.[new, updated, delivered, processing, resulted, errored, canceled, unprocessable]
}

begin
  # list orders
  result = api_instance.list_orders(opts)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_orders: #{e}"
end
```

#### Using the list_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Orders>, Integer, Hash)> list_orders_with_http_info(opts)

```ruby
begin
  # list orders
  data, status_code, headers = api_instance.list_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Orders>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_order_id** | **String** | Paginate orders with order id. 26 character, sortable id. | [optional] |
| **state** | **String** | Filter orders by state, comma delimited.[new, updated, delivered, processing, resulted, errored, canceled, unprocessable] | [optional] |

### Return type

[**Orders**](Orders.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_results

> <Results> list_results(order_id)

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
order_id = '01FGD44Q6MVCG2VNSMCVX5ZCT6' # String | Order id

begin
  # list results
  result = api_instance.list_results(order_id)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_results: #{e}"
end
```

#### Using the list_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Results>, Integer, Hash)> list_results_with_http_info(order_id)

```ruby
begin
  # list results
  data, status_code, headers = api_instance.list_results_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Results>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->list_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | Order id |  |

### Return type

[**Results**](Results.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order

> <OrderIds> update_order(id, opts)

update order

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
opts = {
  order: PrimaryConnectClient::Order.new # Order | 
}

begin
  # update order
  result = api_instance.update_order(id, opts)
  p result
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderIds>, Integer, Hash)> update_order_with_http_info(id, opts)

```ruby
begin
  # update order
  data, status_code, headers = api_instance.update_order_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderIds>
rescue PrimaryConnectClient::ApiError => e
  puts "Error when calling DefaultApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id |  |
| **order** | [**Order**](Order.md) |  | [optional] |

### Return type

[**OrderIds**](OrderIds.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
