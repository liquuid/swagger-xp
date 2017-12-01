# VehicleMaintanceManager.GarageApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**garageInventoryGet**](GarageApi.md#garageInventoryGet) | **GET** /garage/inventory | Get all registered vehicles


<a name="garageInventoryGet"></a>
# **garageInventoryGet**
> garageInventoryGet()

Get all registered vehicles



### Example
```javascript
var VehicleMaintanceManager = require('vehicle_maintance_manager');
var defaultClient = VehicleMaintanceManager.ApiClient.instance;

// Configure OAuth2 access token for authorization: vehiclegarage_auth
var vehiclegarage_auth = defaultClient.authentications['vehiclegarage_auth'];
vehiclegarage_auth.accessToken = 'YOUR ACCESS TOKEN';

var apiInstance = new VehicleMaintanceManager.GarageApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.garageInventoryGet(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

