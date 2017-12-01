# \VehicleApi

All URIs are relative to *http://wmmapi.herokuapp.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddVehicle**](VehicleApi.md#AddVehicle) | **Post** /vehicle | Add a new vehicle
[**DeleteVehicle**](VehicleApi.md#DeleteVehicle) | **Delete** /vehicle/{vehicleId} | Deletes a vehicle
[**GetVehicleById**](VehicleApi.md#GetVehicleById) | **Get** /vehicle/{vehicleId} | Find vehicle by ID
[**UpdateVehicle**](VehicleApi.md#UpdateVehicle) | **Put** /vehicle | Update an existing vehicle
[**UpdateVehicleWithForm**](VehicleApi.md#UpdateVehicleWithForm) | **Post** /vehicle/{vehicleId} | Updates a vehicle in the garage with form data
[**UploadFile**](VehicleApi.md#UploadFile) | **Post** /vehicle/{vehicleId}/uploadImage | uploads an image


# **AddVehicle**
> AddVehicle($body)

Add a new vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteVehicle**
> DeleteVehicle($vehicleId, $apiKey)

Deletes a vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| Vehicle id to delete | 
 **apiKey** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetVehicleById**
> Vehicle GetVehicleById($vehicleId)

Find vehicle by ID

Returns a single vehicle


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle to return | 

### Return type

[**Vehicle**](Vehicle.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateVehicle**
> UpdateVehicle($body)

Update an existing vehicle




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vehicle**](Vehicle.md)| Vehicle object that needs to be added to the garage | 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateVehicleWithForm**
> UpdateVehicleWithForm($vehicleId, $name, $vehicletype)

Updates a vehicle in the garage with form data




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle that needs to be updated | 
 **name** | **string**| Updated name of the vehicle | [optional] 
 **vehicletype** | **string**| Updated type of the vehicle | [optional] 

### Return type

void (empty response body)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UploadFile**
> ModelApiResponse UploadFile($vehicleId, $additionalMetadata, $file)

uploads an image




### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **int64**| ID of vehicle to update | 
 **additionalMetadata** | **string**| Additional data to pass to server | [optional] 
 **file** | ***os.File**| file to upload | [optional] 

### Return type

[**ModelApiResponse**](ApiResponse.md)

### Authorization

[vehiclegarage_auth](../README.md#vehiclegarage_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

