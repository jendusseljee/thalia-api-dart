# openapi.api.PartnersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPartnerEvents**](PartnersApi.md#listPartnerEvents) | **GET** /api/v1/partners/events/ | 
[**listPartners**](PartnersApi.md#listPartners) | **GET** /api/v1/partners/ | 
[**retrieveCalendarjsPartner**](PartnersApi.md#retrieveCalendarjsPartner) | **GET** /api/v1/partners/calendarjs/ | 
[**retrieveRetrievePartner**](PartnersApi.md#retrieveRetrievePartner) | **GET** /api/v1/partners/{id}/ | 
[**retrieveRetrievePartnerEvent**](PartnersApi.md#retrieveRetrievePartnerEvent) | **GET** /api/v1/partners/events/{id}/ | 


# **listPartnerEvents**
> InlineResponse2003 listPartnerEvents(limit, offset, ordering)



View set for partner events.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PartnersApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.listPartnerEvents(limit, offset, ordering);
    print(result);
} catch (e) {
    print("Exception when calling PartnersApi->listPartnerEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPartners**
> InlineResponse2004 listPartners(limit, offset)



View set for partners.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PartnersApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.listPartners(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling PartnersApi->listPartners: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCalendarjsPartner**
> Partner retrieveCalendarjsPartner()



Return response with serialized partner event calender data.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PartnersApi();

try { 
    var result = api_instance.retrieveCalendarjsPartner();
    print(result);
} catch (e) {
    print("Exception when calling PartnersApi->retrieveCalendarjsPartner: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Partner**](Partner.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrievePartner**
> Partner retrieveRetrievePartner(id)



View set for partners.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PartnersApi();
var id = id_example; // String | A unique integer value identifying this partner.

try { 
    var result = api_instance.retrieveRetrievePartner(id);
    print(result);
} catch (e) {
    print("Exception when calling PartnersApi->retrieveRetrievePartner: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this partner. | [default to null]

### Return type

[**Partner**](Partner.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrievePartnerEvent**
> PartnerEvent retrieveRetrievePartnerEvent(id, ordering)



View set for partner events.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PartnersApi();
var id = id_example; // String | A unique integer value identifying this partner event.
var ordering = ordering_example; // String | Which field to use when ordering the results.

try { 
    var result = api_instance.retrieveRetrievePartnerEvent(id, ordering);
    print(result);
} catch (e) {
    print("Exception when calling PartnersApi->retrieveRetrievePartnerEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this partner event. | [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]

### Return type

[**PartnerEvent**](PartnerEvent.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

