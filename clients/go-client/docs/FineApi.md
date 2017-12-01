# \FineApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddFineToVehicleId**](FineApi.md#AddFineToVehicleId) | **Post** /fine/vehicle/{vehicleId} | Add a fine to the vehicle
[**DeleteFine**](FineApi.md#DeleteFine) | **Delete** /fine/{fineId} | Deletes a fine
[**GetFineById**](FineApi.md#GetFineById) | **Get** /fine/{fineId} | Find fine by ID


# **AddFineToVehicleId**
> AddFineToVehicleId($vehicleId, $amount)

Add a fine to the vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle that needs to be updated | 
 **amount** | **float32**| The total amount of fines | 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteFine**
> DeleteFine($fineId, $apiKey)

Deletes a fine




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **int64**| fine id to delete | 
 **apiKey** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetFineById**
> Fine GetFineById($fineId)

Find fine by ID

Returns a single fine


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fineId** | **int64**| ID of fine to return | 

### Return type

[**Fine**](Fine.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

