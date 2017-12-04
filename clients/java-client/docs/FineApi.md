# FineApi

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

FineApi apiInstance = new FineApi();
Long vehicleId = 789L; // Long | ID of vehicle that needs to be updated
BigDecimal amount = new BigDecimal(); // BigDecimal | The total amount of fines
try {
    apiInstance.addFineToVehicleId(vehicleId, amount);
} catch (ApiException e) {
    System.err.println("Exception when calling FineApi#addFineToVehicleId");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **Long**| ID of vehicle that needs to be updated |
 **amount** | **BigDecimal**| The total amount of fines |

### Return type

null (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

<a name="deleteFine"></a>
# **deleteFine**
> deleteFine(fineId, apiKey)

Deletes a fine



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: vehiclegarage_auth
OAuth vehiclegarage_auth = (OAuth) defaultClient.getAuthentication("vehiclegarage_auth");
vehiclegarage_auth.setAccessToken("YOUR ACCESS TOKEN");

FineApi apiInstance = new FineApi();
Long fineId = 789L; // Long | fine id to delete
String apiKey = "apiKey_example"; // String | 
try {
    apiInstance.deleteFine(fineId, apiKey);
} catch (ApiException e) {
    System.err.println("Exception when calling FineApi#deleteFine");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **Long**| fine id to delete |
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.FineApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

FineApi apiInstance = new FineApi();
Long fineId = 789L; // Long | ID of fine to return
try {
    Fine result = apiInstance.getFineById(fineId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling FineApi#getFineById");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **Long**| ID of fine to return |

### Return type

[**Fine**](Fine.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

