# openapi.api.ActivemembersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listMemberGroups**](ActivemembersApi.md#listMemberGroups) | **GET** /api/v1/activemembers/groups/ | 
[**retrieveRetrieveMemberGroup**](ActivemembersApi.md#retrieveRetrieveMemberGroup) | **GET** /api/v1/activemembers/groups/{id}/ | 


# **listMemberGroups**
> InlineResponse200 listMemberGroups(limit, offset, ordering, search)



Viewset that renders or edits a member.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ActivemembersApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.listMemberGroups(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling ActivemembersApi->listMemberGroups: $e\n");
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

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveMemberGroup**
> MemberGroup retrieveRetrieveMemberGroup(id, ordering, search)



Viewset that renders or edits a member.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ActivemembersApi();
var id = id_example; // String | A unique integer value identifying this member group.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.retrieveRetrieveMemberGroup(id, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling ActivemembersApi->retrieveRetrieveMemberGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this member group. | [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**MemberGroup**](MemberGroup.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

