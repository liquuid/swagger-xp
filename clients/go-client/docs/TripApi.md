# \TripApi

All URIs are relative to *http://localhost:3000/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddTripToVehicleId**](TripApi.md#AddTripToVehicleId) | **Post** /trip/vehicle/{vehicleId} | Add a trip log to the vehicle
[**DeleteTrip**](TripApi.md#DeleteTrip) | **Delete** /trip/{tripId} | Deletes a trip log
[**GetTripById**](TripApi.md#GetTripById) | **Get** /trip/{tripId} | Find trip by ID


# **AddTripToVehicleId**
> AddTripToVehicleId($vehicleId, $quantity)

Add a trip log to the vehicle




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

# **DeleteTrip**
> DeleteTrip($tripId, $apiKey)

Deletes a trip log




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **int64**| trip id to delete | 
 **apiKey** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetTripById**
> Trip GetTripById($tripId)

Find trip by ID

Returns a single trip log


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tripId** | **int64**| ID of trip to return | 

### Return type

[**Trip**](Trip.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

