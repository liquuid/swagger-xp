# VehicleMaintanceManager.RefuelApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRefuelToVehicleId**](RefuelApi.md#addRefuelToVehicleId) | **POST** /refuel/vehicle/{vehicleId} | Add a refuel bill to the vehicle
[**deleteRefuel**](RefuelApi.md#deleteRefuel) | **DELETE** /refuel/{refuelId} | Deletes a refuel bill
[**getRefuelById**](RefuelApi.md#getRefuelById) | **GET** /refuel/{refuelId} | Find refuel bill by ID


<a name="addRefuelToVehicleId"></a>
# **addRefuelToVehicleId**
> addRefuelToVehicleId(vehicleId, quantity)

Add a refuel bill to the vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.RefuelApi();

var vehicleId = 789; // Number | ID of vehicle that needs to be updated

var quantity = 3.4; // Number | Fuel Quantity


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.addRefuelToVehicleId(vehicleId, quantity, callback);
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

<a name="deleteRefuel"></a>
# **deleteRefuel**
> deleteRefuel(refuelId, opts)

Deletes a refuel bill



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.RefuelApi();

var refuelId = 789; // Number | refuel id to delete

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
apiInstance.deleteRefuel(refuelId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **Number**| refuel id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="getRefuelById"></a>
# **getRefuelById**
> Refuel getRefuelById(refuelId)

Find refuel bill by ID

Returns a single refuel bill

### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new VehicleMaintanceManager.RefuelApi();

var refuelId = 789; // Number | ID of refuel to return


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getRefuelById(refuelId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **Number**| ID of refuel to return | 

### Return type

[**Refuel**](Refuel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

