# SwaggerClient::RefuelApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_refuel_to_vehicle_id**](RefuelApi.md#add_refuel_to_vehicle_id) | **POST** /refuel/vehicle/{vehicleId} | Add a refuel bill to the vehicle
[**delete_refuel**](RefuelApi.md#delete_refuel) | **DELETE** /refuel/{refuelId} | Deletes a refuel bill
[**get_refuel_by_id**](RefuelApi.md#get_refuel_by_id) | **GET** /refuel/{refuelId} | Find refuel bill by ID


# **add_refuel_to_vehicle_id**
> add_refuel_to_vehicle_id(vehicle_id, quantity)

Add a refuel bill to the vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RefuelApi.new

vehicle_id = 789 # Integer | ID of vehicle that needs to be updated

quantity = 3.4 # Float | Fuel Quantity


begin
  #Add a refuel bill to the vehicle
  api_instance.add_refuel_to_vehicle_id(vehicle_id, quantity)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefuelApi->add_refuel_to_vehicle_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle that needs to be updated | 
 **quantity** | **Float**| Fuel Quantity | 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json



# **delete_refuel**
> delete_refuel(refuel_id, opts)

Deletes a refuel bill



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RefuelApi.new

refuel_id = 789 # Integer | refuel id to delete

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Deletes a refuel bill
  api_instance.delete_refuel(refuel_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefuelApi->delete_refuel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuel_id** | **Integer**| refuel id to delete | 
 **api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_refuel_by_id**
> Refuel get_refuel_by_id(refuel_id)

Find refuel bill by ID

Returns a single refuel bill

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::RefuelApi.new

refuel_id = 789 # Integer | ID of refuel to return


begin
  #Find refuel bill by ID
  result = api_instance.get_refuel_by_id(refuel_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RefuelApi->get_refuel_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuel_id** | **Integer**| ID of refuel to return | 

### Return type

[**Refuel**](Refuel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



