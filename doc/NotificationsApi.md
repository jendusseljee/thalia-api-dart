# openapi.api.NotificationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listMessages**](NotificationsApi.md#listMessages) | **GET** /api/v1/notifications/ | 
[**retrieveRetrieveMessage**](NotificationsApi.md#retrieveRetrieveMessage) | **GET** /api/v1/notifications/{id}/ | 


# **listMessages**
> InlineResponse2009 listMessages(limit, offset, ordering)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NotificationsApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.listMessages(limit, offset, ordering);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->listMessages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveMessage**
> Message retrieveRetrieveMessage(id, ordering)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = NotificationsApi();
var id = id_example; // String | A unique integer value identifying this message.
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.retrieveRetrieveMessage(id, ordering);
    print(result);
} catch (e) {
    print("Exception when calling NotificationsApi->retrieveRetrieveMessage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this message. | [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]

### Return type

[**Message**](Message.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

