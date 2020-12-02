# openapi.api.MembersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listMembers**](MembersApi.md#listMembers) | **GET** /api/v1/members/ | 
[**retrieveBirthdaysMember**](MembersApi.md#retrieveBirthdaysMember) | **GET** /api/v1/members/birthdays/ | 
[**retrieveRetrieveMember**](MembersApi.md#retrieveRetrieveMember) | **GET** /api/v1/members/{id}/ | 


# **listMembers**
> InlineResponse2002 listMembers(limit, offset, ordering, search)



Viewset that renders or edits a member

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembersApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.listMembers(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling MembersApi->listMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBirthdaysMember**
> MemberList retrieveBirthdaysMember()



Viewset that renders or edits a member

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembersApi();

try { 
    var result = api_instance.retrieveBirthdaysMember();
    print(result);
} catch (e) {
    print("Exception when calling MembersApi->retrieveBirthdaysMember: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MemberList**](MemberList.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveMember**
> ProfileRetrieve retrieveRetrieveMember(id, ordering, search)



Viewset that renders or edits a member

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = MembersApi();
var id = id_example; // String | A unique integer value identifying this member.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.retrieveRetrieveMember(id, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling MembersApi->retrieveRetrieveMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this member. | [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**ProfileRetrieve**](ProfileRetrieve.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

