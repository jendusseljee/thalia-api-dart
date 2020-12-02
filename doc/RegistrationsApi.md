# openapi.api.RegistrationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destroyDestroyEventRegistration**](RegistrationsApi.md#destroyDestroyEventRegistration) | **DELETE** /api/v1/registrations/{id}/ | 
[**partialUpdatePartialUpdateEventRegistration**](RegistrationsApi.md#partialUpdatePartialUpdateEventRegistration) | **PATCH** /api/v1/registrations/{id}/ | 
[**retrieveRetrieveEventRegistration**](RegistrationsApi.md#retrieveRetrieveEventRegistration) | **GET** /api/v1/registrations/{id}/ | 
[**updateUpdateEventRegistration**](RegistrationsApi.md#updateUpdateEventRegistration) | **PUT** /api/v1/registrations/{id}/ | 


# **destroyDestroyEventRegistration**
> destroyDestroyEventRegistration(id)



Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RegistrationsApi();
var id = id_example; // String | A unique integer value identifying this Registration.

try { 
    api_instance.destroyDestroyEventRegistration(id);
} catch (e) {
    print("Exception when calling RegistrationsApi->destroyDestroyEventRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this Registration. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePartialUpdateEventRegistration**
> EventRegistration partialUpdatePartialUpdateEventRegistration(id, eventRegistration)



Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RegistrationsApi();
var id = id_example; // String | A unique integer value identifying this Registration.
var eventRegistration = EventRegistration(); // EventRegistration | 

try { 
    var result = api_instance.partialUpdatePartialUpdateEventRegistration(id, eventRegistration);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationsApi->partialUpdatePartialUpdateEventRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this Registration. | [default to null]
 **eventRegistration** | [**EventRegistration**](EventRegistration.md)|  | [optional] 

### Return type

[**EventRegistration**](EventRegistration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveEventRegistration**
> EventRegistration retrieveRetrieveEventRegistration(id)



Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RegistrationsApi();
var id = id_example; // String | A unique integer value identifying this Registration.

try { 
    var result = api_instance.retrieveRetrieveEventRegistration(id);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationsApi->retrieveRetrieveEventRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this Registration. | [default to null]

### Return type

[**EventRegistration**](EventRegistration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUpdateEventRegistration**
> EventRegistration updateUpdateEventRegistration(id, eventRegistration)



Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RegistrationsApi();
var id = id_example; // String | A unique integer value identifying this Registration.
var eventRegistration = EventRegistration(); // EventRegistration | 

try { 
    var result = api_instance.updateUpdateEventRegistration(id, eventRegistration);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationsApi->updateUpdateEventRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this Registration. | [default to null]
 **eventRegistration** | [**EventRegistration**](EventRegistration.md)|  | [optional] 

### Return type

[**EventRegistration**](EventRegistration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

