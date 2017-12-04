# TripApi

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.TripApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

TripApi apiInstance = new TripApi();
Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
BigDecimal quantity = new BigDecimal(); // BigDecimal | Fuel Quantity
try {
    apiInstance.addTripToVehicleId(vehicleId, quantity);
} catch (ApiException e) {
    System.err.println("Exception when calling TripApi#addTripToVehicleId");
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

<a name="deleteTrip"></a>
# **deleteTrip**
> deleteTrip(tripId, apiKey)

Deletes a trip log



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.TripApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

TripApi apiInstance = new TripApi();
Long tripId = 789L; // Long | trip id to delete
String apiKey = "apiKey_example"; // String | 
try {
    apiInstance.deleteTrip(tripId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling TripApi#deleteTrip");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **Long**| trip id to delete |
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.TripApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

TripApi apiInstance = new TripApi();
Long tripId = 789L; // Long | ID of trip to return
try {
    Trip result = apiInstance.getTripById(tripId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TripApi#getTripById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **Long**| ID of trip to return |

### Return type

[**Trip**](Trip.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

