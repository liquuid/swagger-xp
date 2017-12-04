# SwaggerClient::GarageApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**garage_inventory_get**](GarageApi.md#garage_inventory_get) | **GET** /garage/inventory | Get all registered vehicles


# **garage_inventory_get**
> garage_inventory_get

Get all registered vehicles



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::GarageApi.new

begin
  #Get all registered vehicles
  api_instance.garage_inventory_get
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GarageApi->garage_inventory_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



