# VehicleApi

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

VehicleApi apiInstance = new VehicleApi();
Vehicle body = new Vehicle(); // Vehicle | Vehicle object that needs to be added to the garage
try {
    apiInstance.addVehicle(body);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#addVehicle");
    e.printStackTrace();
}
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
> deleteVehicle(vehicleId, apiKey)

Deletes a vehicle



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

VehicleApi apiInstance = new VehicleApi();
Long vehicleId = 789L; // Long | Vehicle id to delete
String apiKey = "apiKey_example"; // String | 
try {
    apiInstance.deleteVehicle(vehicleId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#deleteVehicle");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| Vehicle id to delete |
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

VehicleApi apiInstance = new VehicleApi();
Long vehicleId = 789L; // Long | ID of vehicle to return
try {
    Vehicle result = apiInstance.getVehicleById(vehicleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#getVehicleById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle to return |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

VehicleApi apiInstance = new VehicleApi();
Vehicle body = new Vehicle(); // Vehicle | Vehicle object that needs to be added to the garage
try {
    apiInstance.updateVehicle(body);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#updateVehicle");
    e.printStackTrace();
}
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
> updateVehicleWithForm(vehicleId, name, vehicletype)

Updates a vehicle in the garage with form data



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

VehicleApi apiInstance = new VehicleApi();
Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
String name = "name_example"; // String | Updated name of the vehicle
String vehicletype = "vehicletype_example"; // String | Updated type of the vehicle
try {
    apiInstance.updateVehicleWithForm(vehicleId, name, vehicletype);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#updateVehicleWithForm");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle that needs to be updated |
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
> ModelApiResponse uploadFile(vehicleId, additionalMetadata, file)

uploads an image



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.VehicleApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

VehicleApi apiInstance = new VehicleApi();
Long vehicleId = 789L; // Long | ID of vehicle to update
String additionalMetadata = "additionalMetadata_example"; // String | Additional data to pass to server
File file = new File("/path/to/file.txt"); // File | file to upload
try {
    ModelApiResponse result = apiInstance.uploadFile(vehicleId, additionalMetadata, file);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling VehicleApi#uploadFile");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle to update |
 **additionalMetadata** | **String**| Additional data to pass to server | [optional]
 **file** | **File**| file to upload | [optional]

### Return type

[**ModelApiResponse**](ModelApiResponse.md)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

