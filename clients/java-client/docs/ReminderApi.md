# ReminderApi

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ReminderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

ReminderApi apiInstance = new ReminderApi();
Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
String message = "message_example"; // String | Reminder message
try {
    apiInstance.addReminderToVehicleId(vehicleId, message);
} catch (ApiException e) {
    System.err.println("Exception when calling ReminderApi#addReminderToVehicleId");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle that needs to be updated |
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
> deleteReminder(reminderId, apiKey)

Deletes a reminder



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ReminderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

ReminderApi apiInstance = new ReminderApi();
Long reminderId = 789L; // Long | reminder id to delete
String apiKey = "apiKey_example"; // String | 
try {
    apiInstance.deleteReminder(reminderId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling ReminderApi#deleteReminder");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **Long**| reminder id to delete |
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ReminderApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ReminderApi apiInstance = new ReminderApi();
Long reminderId = 789L; // Long | ID of reminder to return
try {
    Reminder result = apiInstance.getReminderById(reminderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ReminderApi#getReminderById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderId** | **Long**| ID of reminder to return |

### Return type

[**Reminder**](Reminder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

