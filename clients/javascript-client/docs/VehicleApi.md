# VehicleMaintanceManager.VehicleApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addVehicle**](VehicleApi.md#addVehicle) | **POST** /vehicle | Add a new vehicle
[**deleteVehicle**](VehicleApi.md#deleteVehicle) | **DELETE** /vehicle/{vehicleId} | Deletes a vehicle
[**getVehicleById**](VehicleApi.md#getVehicleById) | **GET** /vehicle/{vehicleId} | Find vehicle by ID
[**updateVehicle**](VehicleApi.md#updateVehicle) | **PUT** /vehicle | Update an existing vehicle
[**updateVehicleWithForm**](VehicleApi.md#updateVehicleWithForm) | **POST** /vehicle/{vehicleId} | Updates a vehicle in the garage with form data
[**uploadFile**](VehicleApi.md#uploadFile) | **POST** /vehicle/{vehicleId}/uploadImage | uploads an image


<a name="addVehicle"></a>
# **addVehicle**
> addVehicle(body)

Add a new vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var body = new VehicleMaintanceManager.Vehicle(); // Vehicle | Vehicle object that needs to be added to the garage


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.addVehicle(body, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

<a name="deleteVehicle"></a>
# **deleteVehicle**
> deleteVehicle(vehicleId, opts)

Deletes a vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var vehicleId = 789; // Number | Vehicle id to delete

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
apiInstance.deleteVehicle(vehicleId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| Vehicle id to delete | 
 **apiKey** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="getVehicleById"></a>
# **getVehicleById**
> Vehicle getVehicleById(vehicleId)

Find vehicle by ID

Returns a single vehicle

### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var vehicleId = 789; // Number | ID of vehicle to return


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getVehicleById(vehicleId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle to return | 

### Return type

[**Vehicle**](Vehicle.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

<a name="updateVehicle"></a>
# **updateVehicle**
> updateVehicle(body)

Update an existing vehicle



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var body = new VehicleMaintanceManager.Vehicle(); // Vehicle | Vehicle object that needs to be added to the garage


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.updateVehicle(body, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

<a name="updateVehicleWithForm"></a>
# **updateVehicleWithForm**
> updateVehicleWithForm(vehicleId, opts)

Updates a vehicle in the garage with form data



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var vehicleId = 789; // Number | ID of vehicle that needs to be updated

var opts = { 
  'name': "name_example", // String | Updated name of the vehicle
  'vehicletype': "vehicletype_example" // String | Updated type of the vehicle
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.updateVehicleWithForm(vehicleId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle that needs to be updated | 
 **name** | **String**| Updated name of the vehicle | [optional] 
 **vehicletype** | **String**| Updated type of the vehicle | [optional] 

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="uploadFile"></a>
# **uploadFile**
> ApiResponse uploadFile(vehicleId, opts)

uploads an image



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.VehicleApi();

var vehicleId = 789; // Number | ID of vehicle to update

var opts = { 
  'additionalMetadata': "additionalMetadata_example", // String | Additional data to pass to server
  'file': "/path/to/file.txt" // File | file to upload
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.uploadFile(vehicleId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Number**| ID of vehicle to update | 
 **additionalMetadata** | **String**| Additional data to pass to server | [optional] 
 **file** | **File**| file to upload | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

