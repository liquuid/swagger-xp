# SwaggerClient::VehicleApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_vehicle**](VehicleApi.md#add_vehicle) | **POST** /vehicle | Add a new vehicle
[**delete_vehicle**](VehicleApi.md#delete_vehicle) | **DELETE** /vehicle/{vehicleId} | Deletes a vehicle
[**get_vehicle_by_id**](VehicleApi.md#get_vehicle_by_id) | **GET** /vehicle/{vehicleId} | Find vehicle by ID
[**update_vehicle**](VehicleApi.md#update_vehicle) | **PUT** /vehicle | Update an existing vehicle
[**update_vehicle_with_form**](VehicleApi.md#update_vehicle_with_form) | **POST** /vehicle/{vehicleId} | Updates a vehicle in the garage with form data
[**upload_file**](VehicleApi.md#upload_file) | **POST** /vehicle/{vehicleId}/uploadImage | uploads an image


# **add_vehicle**
> add_vehicle(body)

Add a new vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VehicleApi.new

body = SwaggerClient::Vehicle.new # Vehicle | Vehicle object that needs to be added to the garage


begin
  #Add a new vehicle
  api_instance.add_vehicle(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->add_vehicle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json



# **delete_vehicle**
> delete_vehicle(vehicle_id, opts)

Deletes a vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VehicleApi.new

vehicle_id = 789 # Integer | Vehicle id to delete

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Deletes a vehicle
  api_instance.delete_vehicle(vehicle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->delete_vehicle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| Vehicle id to delete | 
 **api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_vehicle_by_id**
> Vehicle get_vehicle_by_id(vehicle_id)

Find vehicle by ID

Returns a single vehicle

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

api_instance = SwaggerClient::VehicleApi.new

vehicle_id = 789 # Integer | ID of vehicle to return


begin
  #Find vehicle by ID
  result = api_instance.get_vehicle_by_id(vehicle_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->get_vehicle_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle to return | 

### Return type

[**Vehicle**](Vehicle.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **update_vehicle**
> update_vehicle(body)

Update an existing vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VehicleApi.new

body = SwaggerClient::Vehicle.new # Vehicle | Vehicle object that needs to be added to the garage


begin
  #Update an existing vehicle
  api_instance.update_vehicle(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->update_vehicle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json



# **update_vehicle_with_form**
> update_vehicle_with_form(vehicle_id, opts)

Updates a vehicle in the garage with form data



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VehicleApi.new

vehicle_id = 789 # Integer | ID of vehicle that needs to be updated

opts = { 
  name: "name_example", # String | Updated name of the vehicle
  vehicletype: "vehicletype_example" # String | Updated type of the vehicle
}

begin
  #Updates a vehicle in the garage with form data
  api_instance.update_vehicle_with_form(vehicle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->update_vehicle_with_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle that needs to be updated | 
 **name** | **String**| Updated name of the vehicle | [optional] 
 **vehicletype** | **String**| Updated type of the vehicle | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json



# **upload_file**
> ApiResponse upload_file(vehicle_id, opts)

uploads an image



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VehicleApi.new

vehicle_id = 789 # Integer | ID of vehicle to update

opts = { 
  additional_metadata: "additional_metadata_example", # String | Additional data to pass to server
  file: File.new("/path/to/file.txt") # File | file to upload
}

begin
  #uploads an image
  result = api_instance.upload_file(vehicle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VehicleApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle to update | 
 **additional_metadata** | **String**| Additional data to pass to server | [optional] 
 **file** | **File**| file to upload | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



