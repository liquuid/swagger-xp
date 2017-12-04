# GarageApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**garageInventoryGet**](GarageApi.md#garageInventoryGet) | **GET** /garage/inventory | Get all registered vehicles


<a name="garageInventoryGet"></a>
# **garageInventoryGet**
> garageInventoryGet()

Get all registered vehicles



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.GarageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

GarageApi apiInstance = new GarageApi();
try {
    apiInstance.garageInventoryGet();
} catch (ApiException e) {
    System.err.println("Exception when calling GarageApi#garageInventoryGet");
    e.printStackTrace();
}
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

