# SwaggerClient::TripApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_trip_to_vehicle_id**](TripApi.md#add_trip_to_vehicle_id) | **POST** /trip/vehicle/{vehicleId} | Add a trip log to the vehicle
[**delete_trip**](TripApi.md#delete_trip) | **DELETE** /trip/{tripId} | Deletes a trip log
[**get_trip_by_id**](TripApi.md#get_trip_by_id) | **GET** /trip/{tripId} | Find trip by ID


# **add_trip_to_vehicle_id**
> add_trip_to_vehicle_id(vehicle_id, quantity)

Add a trip log to the vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TripApi.new

vehicle_id = 789 # Integer | ID of vehicle that needs to be updated

quantity = 3.4 # Float | Fuel Quantity


begin
  #Add a trip log to the vehicle
  api_instance.add_trip_to_vehicle_id(vehicle_id, quantity)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TripApi->add_trip_to_vehicle_id: #{e}"
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



# **delete_trip**
> delete_trip(trip_id, opts)

Deletes a trip log



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::TripApi.new

trip_id = 789 # Integer | trip id to delete

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Deletes a trip log
  api_instance.delete_trip(trip_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TripApi->delete_trip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trip_id** | **Integer**| trip id to delete | 
 **api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_trip_by_id**
> Trip get_trip_by_id(trip_id)

Find trip by ID

Returns a single trip log

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

api_instance = SwaggerClient::TripApi.new

trip_id = 789 # Integer | ID of trip to return


begin
  #Find trip by ID
  result = api_instance.get_trip_by_id(trip_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TripApi->get_trip_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trip_id** | **Integer**| ID of trip to return | 

### Return type

[**Trip**](Trip.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



