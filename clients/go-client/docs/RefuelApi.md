# \RefuelApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddRefuelToVehicleId**](RefuelApi.md#AddRefuelToVehicleId) | **Post** /refuel/vehicle/{vehicleId} | Add a refuel bill to the vehicle
[**DeleteRefuel**](RefuelApi.md#DeleteRefuel) | **Delete** /refuel/{refuelId} | Deletes a refuel bill
[**GetRefuelById**](RefuelApi.md#GetRefuelById) | **Get** /refuel/{refuelId} | Find refuel bill by ID


# **AddRefuelToVehicleId**
> AddRefuelToVehicleId($vehicleId, $quantity)

Add a refuel bill to the vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle that needs to be updated | 
 **quantity** | **float32**| Fuel Quantity | 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteRefuel**
> DeleteRefuel($refuelId, $apiKey)

Deletes a refuel bill




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **int64**| refuel id to delete | 
 **apiKey** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetRefuelById**
> Refuel GetRefuelById($refuelId)

Find refuel bill by ID

Returns a single refuel bill


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refuelId** | **int64**| ID of refuel to return | 

### Return type

[**Refuel**](Refuel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

