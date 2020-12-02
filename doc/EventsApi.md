# openapi.api.EventsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRegistrationsEvent**](EventsApi.md#createRegistrationsEvent) | **POST** /api/v1/events/{id}/registrations/ | 
[**listEvents**](EventsApi.md#listEvents) | **GET** /api/v1/events/ | 
[**retrieveCalendarjsEvent**](EventsApi.md#retrieveCalendarjsEvent) | **GET** /api/v1/events/calendarjs/ | 
[**retrieveRegistrationsEvent**](EventsApi.md#retrieveRegistrationsEvent) | **GET** /api/v1/events/{id}/registrations/ | 
[**retrieveRetrieveEvent**](EventsApi.md#retrieveRetrieveEvent) | **GET** /api/v1/events/{id}/ | 
[**retrieveUnpublishedEvent**](EventsApi.md#retrieveUnpublishedEvent) | **GET** /api/v1/events/unpublished/ | 


# **createRegistrationsEvent**
> EventsCalenderJS createRegistrationsEvent(id, eventsCalenderJS)



Defines a custom route for the event's registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();
var id = id_example; // String | A unique integer value identifying this event.
var eventsCalenderJS = EventsCalenderJS(); // EventsCalenderJS | 

try { 
    var result = api_instance.createRegistrationsEvent(id, eventsCalenderJS);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->createRegistrationsEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this event. | [default to null]
 **eventsCalenderJS** | [**EventsCalenderJS**](EventsCalenderJS.md)|  | [optional] 

### Return type

[**EventsCalenderJS**](EventsCalenderJS.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEvents**
> InlineResponse2001 listEvents(limit, offset, ordering, search)



Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.listEvents(limit, offset, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->listEvents: $e\n");
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

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCalendarjsEvent**
> EventsCalenderJS retrieveCalendarjsEvent()



Defines a custom route that outputs the correctly formatted events information for CalendarJS, published events only :param request: the request object  :return: response containing the data

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();

try { 
    var result = api_instance.retrieveCalendarjsEvent();
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->retrieveCalendarjsEvent: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventsCalenderJS**](EventsCalenderJS.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRegistrationsEvent**
> EventsCalenderJS retrieveRegistrationsEvent(id)



Defines a custom route for the event's registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();
var id = id_example; // String | A unique integer value identifying this event.

try { 
    var result = api_instance.retrieveRegistrationsEvent(id);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->retrieveRegistrationsEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this event. | [default to null]

### Return type

[**EventsCalenderJS**](EventsCalenderJS.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveEvent**
> EventRetrieve retrieveRetrieveEvent(id, ordering, search)



Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();
var id = id_example; // String | A unique integer value identifying this event.
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.retrieveRetrieveEvent(id, ordering, search);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->retrieveRetrieveEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this event. | [default to null]
 **ordering** | **String**| Which field to use when ordering the results. | [optional] [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**EventRetrieve**](EventRetrieve.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveUnpublishedEvent**
> EventsCalenderJS retrieveUnpublishedEvent()



Defines a custom route that outputs the correctly formatted events information for CalendarJS, unpublished events only  :param request: the request object :return: response containing the data

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = EventsApi();

try { 
    var result = api_instance.retrieveUnpublishedEvent();
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->retrieveUnpublishedEvent: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventsCalenderJS**](EventsCalenderJS.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

