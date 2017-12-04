# SwaggerClient::ReminderApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_reminder_to_vehicle_id**](ReminderApi.md#add_reminder_to_vehicle_id) | **POST** /reminder/vehicle/{vehicleId} | Add a reminder to the vehicle
[**delete_reminder**](ReminderApi.md#delete_reminder) | **DELETE** /reminder/{reminderId} | Deletes a reminder
[**get_reminder_by_id**](ReminderApi.md#get_reminder_by_id) | **GET** /reminder/{reminderId} | Find reminder by ID


# **add_reminder_to_vehicle_id**
> add_reminder_to_vehicle_id(vehicle_id, message)

Add a reminder to the vehicle



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReminderApi.new

vehicle_id = 789 # Integer | ID of vehicle that needs to be updated

message = "message_example" # String | Reminder message


begin
  #Add a reminder to the vehicle
  api_instance.add_reminder_to_vehicle_id(vehicle_id, message)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReminderApi->add_reminder_to_vehicle_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicle_id** | **Integer**| ID of vehicle that needs to be updated | 
 **message** | **String**| Reminder message | 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json



# **delete_reminder**
> delete_reminder(reminder_id, opts)

Deletes a reminder



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: vehiclegarage_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReminderApi.new

reminder_id = 789 # Integer | reminder id to delete

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Deletes a reminder
  api_instance.delete_reminder(reminder_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReminderApi->delete_reminder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminder_id** | **Integer**| reminder id to delete | 
 **api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



# **get_reminder_by_id**
> Reminder get_reminder_by_id(reminder_id)

Find reminder by ID

Returns a single reminder

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

api_instance = SwaggerClient::ReminderApi.new

reminder_id = 789 # Integer | ID of reminder to return


begin
  #Find reminder by ID
  result = api_instance.get_reminder_by_id(reminder_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReminderApi->get_reminder_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminder_id** | **Integer**| ID of reminder to return | 

### Return type

[**Reminder**](Reminder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json



