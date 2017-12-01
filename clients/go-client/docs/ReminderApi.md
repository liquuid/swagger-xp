# \ReminderApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddReminderToVehicleId**](ReminderApi.md#AddReminderToVehicleId) | **Post** /reminder/vehicle/{vehicleId} | Add a reminder to the vehicle
[**DeleteReminder**](ReminderApi.md#DeleteReminder) | **Delete** /reminder/{reminderId} | Deletes a reminder
[**GetReminderById**](ReminderApi.md#GetReminderById) | **Get** /reminder/{reminderId} | Find reminder by ID


# **AddReminderToVehicleId**
> AddReminderToVehicleId($vehicleId, $message)

Add a reminder to the vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle that needs to be updated | 
 **message** | **string**| Reminder message | 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteReminder**
> DeleteReminder($reminderId, $apiKey)

Deletes a reminder




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **int64**| reminder id to delete | 
 **apiKey** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetReminderById**
> Reminder GetReminderById($reminderId)

Find reminder by ID

Returns a single reminder


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **int64**| ID of reminder to return | 

### Return type

[**Reminder**](Reminder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

