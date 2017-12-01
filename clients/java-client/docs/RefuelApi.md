# RefuelApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.RefuelApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

RefuelApi apiInstance = new RefuelApi();
Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
BigDecimal quantity = new BigDecimal(); // BigDecimal | Fuel Quantity
try {
    apiInstance.addRefuelToVehicleId(vehicleId, quantity);
} catch (ApiException e) {
    System.err.println("Exception when calling RefuelApi#addRefuelToVehicleId");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle that needs to be updated |
 **quantity** | **BigDecimal**| Fuel Quantity |

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="deleteRefuel"></a>
# **deleteRefuel**
> deleteRefuel(refuelId, apiKey)

Deletes a refuel bill



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.RefuelApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

RefuelApi apiInstance = new RefuelApi();
Long refuelId = 789L; // Long | refuel id to delete
String apiKey = "apiKey_example"; // String | 
try {
    apiInstance.deleteRefuel(refuelId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling RefuelApi#deleteRefuel");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **Long**| refuel id to delete |
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.RefuelApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

RefuelApi apiInstance = new RefuelApi();
Long refuelId = 789L; // Long | ID of refuel to return
try {
    Refuel result = apiInstance.getRefuelById(refuelId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RefuelApi#getRefuelById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **Long**| ID of refuel to return |

### Return type

[**Refuel**](Refuel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

