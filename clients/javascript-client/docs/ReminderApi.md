# VehicleMaintanceManager.ReminderApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addReminderToVehicleId**](ReminderApi.md#addReminderToVehicleId) | **POST** /reminder/vehicle/{vehicleId} | Add a reminder to the vehicle
[**deleteReminder**](ReminderApi.md#deleteReminder) | **DELETE** /reminder/{reminderId} | Deletes a reminder
[**getReminderById**](ReminderApi.md#getReminderById) | **GET** /reminder/{reminderId} | Find reminder by ID


<a name="addReminderToVehicleId"></a>
# **addReminderToVehicleId**
> addReminderToVehicleId(vehicleId, message)

Add a reminder to the vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.ReminderApi();

var vehicleId = 789; // Number | ID of vehicle that needs to be updated

var message = "message_example"; // String | Reminder message


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.addReminderToVehicleId(vehicleId, message, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle that needs to be updated | 
 **message** | **String**| Reminder message | 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="deleteReminder"></a>
# **deleteReminder**
> deleteReminder(reminderId, opts)

Deletes a reminder



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.ReminderApi();

var reminderId = 789; // Number | reminder id to delete

var opts = { 
  'apiKey': "apiKey_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteReminder(reminderId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **Number**| reminder id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="getReminderById"></a>
# **getReminderById**
> Reminder getReminderById(reminderId)

Find reminder by ID

Returns a single reminder

### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new VehicleMaintanceManager.ReminderApi();

var reminderId = 789; // Number | ID of reminder to return


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getReminderById(reminderId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **Number**| ID of reminder to return | 

### Return type

[**Reminder**](Reminder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

