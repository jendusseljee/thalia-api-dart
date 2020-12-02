# openapi.api.DevicesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreateDevice**](DevicesApi.md#createCreateDevice) | **POST** /api/v1/devices/ | 
[**destroyDestroyDevice**](DevicesApi.md#destroyDestroyDevice) | **DELETE** /api/v1/devices/{id}/ | 
[**listDevices**](DevicesApi.md#listDevices) | **GET** /api/v1/devices/ | 
[**partialUpdatePartialUpdateDevice**](DevicesApi.md#partialUpdatePartialUpdateDevice) | **PATCH** /api/v1/devices/{id}/ | 
[**retrieveCategoriesDevice**](DevicesApi.md#retrieveCategoriesDevice) | **GET** /api/v1/devices/categories/ | 
[**retrieveRetrieveDevice**](DevicesApi.md#retrieveRetrieveDevice) | **GET** /api/v1/devices/{id}/ | 
[**updateUpdateDevice**](DevicesApi.md#updateUpdateDevice) | **PUT** /api/v1/devices/{id}/ | 


# **createCreateDevice**
> Device createCreateDevice(device)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var device = Device(); // Device | 

try { 
    var result = api_instance.createCreateDevice(device);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->createCreateDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**Device**](Device.md)|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroyDestroyDevice**
> destroyDestroyDevice(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var id = id_example; // String | A unique integer value identifying this device.

try { 
    api_instance.destroyDestroyDevice(id);
} catch (e) {
    print("Exception when calling DevicesApi->destroyDestroyDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this device. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevices**
> InlineResponse2008 listDevices(limit, offset)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.listDevices(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->listDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePartialUpdateDevice**
> Device partialUpdatePartialUpdateDevice(id, device)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var id = id_example; // String | A unique integer value identifying this device.
var device = Device(); // Device | 

try { 
    var result = api_instance.partialUpdatePartialUpdateDevice(id, device);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->partialUpdatePartialUpdateDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this device. | [default to null]
 **device** | [**Device**](Device.md)|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCategoriesDevice**
> Device retrieveCategoriesDevice()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();

try { 
    var result = api_instance.retrieveCategoriesDevice();
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->retrieveCategoriesDevice: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Device**](Device.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveDevice**
> Device retrieveRetrieveDevice(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var id = id_example; // String | A unique integer value identifying this device.

try { 
    var result = api_instance.retrieveRetrieveDevice(id);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->retrieveRetrieveDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this device. | [default to null]

### Return type

[**Device**](Device.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUpdateDevice**
> Device updateUpdateDevice(id, device)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = DevicesApi();
var id = id_example; // String | A unique integer value identifying this device.
var device = Device(); // Device | 

try { 
    var result = api_instance.updateUpdateDevice(id, device);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->updateUpdateDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this device. | [default to null]
 **device** | [**Device**](Device.md)|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

