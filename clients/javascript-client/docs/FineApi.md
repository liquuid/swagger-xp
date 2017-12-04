# VehicleMaintanceManager.FineApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFineToVehicleId**](FineApi.md#addFineToVehicleId) | **POST** /fine/vehicle/{vehicleId} | Add a fine to the vehicle
[**deleteFine**](FineApi.md#deleteFine) | **DELETE** /fine/{fineId} | Deletes a fine
[**getFineById**](FineApi.md#getFineById) | **GET** /fine/{fineId} | Find fine by ID


<a name="addFineToVehicleId"></a>
# **addFineToVehicleId**
> addFineToVehicleId(vehicleId, amount)

Add a fine to the vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.FineApi();

var vehicleId = 789; // Number | ID of vehicle that needs to be updated

var amount = 3.4; // Number | The total amount of fines


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.addFineToVehicleId(vehicleId, amount, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle that needs to be updated | 
 **amount** | **Number**| The total amount of fines | 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="deleteFine"></a>
# **deleteFine**
> deleteFine(fineId, opts)

Deletes a fine



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.FineApi();

var fineId = 789; // Number | fine id to delete

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
apiInstance.deleteFine(fineId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **Number**| fine id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="getFineById"></a>
# **getFineById**
> Fine getFineById(fineId)

Find fine by ID

Returns a single fine

### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new VehicleMaintanceManager.FineApi();

var fineId = 789; // Number | ID of fine to return


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getFineById(fineId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **Number**| ID of fine to return | 

### Return type

[**Fine**](Fine.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

