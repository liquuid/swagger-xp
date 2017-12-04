# VehicleMaintanceManager.TripApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTripToVehicleId**](TripApi.md#addTripToVehicleId) | **POST** /trip/vehicle/{vehicleId} | Add a trip log to the vehicle
[**deleteTrip**](TripApi.md#deleteTrip) | **DELETE** /trip/{tripId} | Deletes a trip log
[**getTripById**](TripApi.md#getTripById) | **GET** /trip/{tripId} | Find trip by ID


<a name="addTripToVehicleId"></a>
# **addTripToVehicleId**
> addTripToVehicleId(vehicleId, quantity)

Add a trip log to the vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.TripApi();

var vehicleId = 789; // Number | ID of vehicle that needs to be updated

var quantity = 3.4; // Number | Fuel Quantity


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.addTripToVehicleId(vehicleId, quantity, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle that needs to be updated | 
 **quantity** | **Number**| Fuel Quantity | 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="deleteTrip"></a>
# **deleteTrip**
> deleteTrip(tripId, opts)

Deletes a trip log



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.TripApi();

var tripId = 789; // Number | trip id to delete

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
apiInstance.deleteTrip(tripId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **Number**| trip id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="getTripById"></a>
# **getTripById**
> Trip getTripById(tripId)

Find trip by ID

Returns a single trip log

### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new VehicleMaintanceManager.TripApi();

var tripId = 789; // Number | ID of trip to return


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getTripById(tripId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **Number**| ID of trip to return | 

### Return type

[**Trip**](Trip.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

