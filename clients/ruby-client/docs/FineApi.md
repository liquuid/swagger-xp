# SwaggerClient::FineApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_fine_to_vehicle_id**](FineApi.md#add_fine_to_vehicle_id) | **POST** /fine/vehicle/{vehicleId} | Add a fine to the vehicle
[**delete_fine**](FineApi.md#delete_fine) | **DELETE** /fine/{fineId} | Deletes a fine
[**get_fine_by_id**](FineApi.md#get_fine_by_id) | **GET** /fine/{fineId} | Find fine by ID


# **add_fine_to_vehicle_id**
> add_fine_to_vehicle_id(vehicle_id, amount)

Add a fine to the vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FineApi.new

vehicle_id = 789 # Integer | ID of vehicle that needs to be updated

amount = 3.4 # Float | The total amount of fines


begin
  #Add a fine to the vehicle
  api_instance.add_fine_to_vehicle_id(vehicle_id, amount)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FineApi->add_fine_to_vehicle_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle that needs to be updated | 
 **amount** | **Float**| The total amount of fines | 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json



# **delete_fine**
> delete_fine(fine_id, opts)

Deletes a fine



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::FineApi.new

fine_id = 789 # Integer | fine id to delete

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Deletes a fine
  api_instance.delete_fine(fine_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FineApi->delete_fine: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_id** | **Integer**| fine id to delete | 
 **api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_fine_by_id**
> Fine get_fine_by_id(fine_id)

Find fine by ID

Returns a single fine

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

api_instance = SwaggerClient::FineApi.new

fine_id = 789 # Integer | ID of fine to return


begin
  #Find fine by ID
  result = api_instance.get_fine_by_id(fine_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling FineApi->get_fine_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fine_id** | **Integer**| ID of fine to return | 

### Return type

[**Fine**](Fine.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



