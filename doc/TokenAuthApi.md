# openapi.api.TokenAuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAuthToken**](TokenAuthApi.md#createAuthToken) | **POST** /api/v1/token-auth/ | 


# **createAuthToken**
> AuthToken createAuthToken(username, password, token)



Custom override of the AuthToken view to force lowercase the username

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TokenAuthApi();
var username = username_example; // String | 
var password = password_example; // String | 
var token = token_example; // String | 

try { 
    var result = api_instance.createAuthToken(username, password, token);
    print(result);
} catch (e) {
    print("Exception when calling TokenAuthApi->createAuthToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | [default to null]
 **password** | **String**|  | [default to null]
 **token** | **String**|  | [optional] [default to null]

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

