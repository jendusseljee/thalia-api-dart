# openapi.api.PhotosApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreateAlbum**](PhotosApi.md#createCreateAlbum) | **POST** /api/v1/photos/albums/ | 
[**createCreatePhoto**](PhotosApi.md#createCreatePhoto) | **POST** /api/v1/photos/images/ | 
[**destroyDestroyAlbum**](PhotosApi.md#destroyDestroyAlbum) | **DELETE** /api/v1/photos/albums/{id}/ | 
[**listAlbums**](PhotosApi.md#listAlbums) | **GET** /api/v1/photos/albums/ | 
[**partialUpdatePartialUpdateAlbum**](PhotosApi.md#partialUpdatePartialUpdateAlbum) | **PATCH** /api/v1/photos/albums/{id}/ | 
[**partialUpdatePartialUpdatePhoto**](PhotosApi.md#partialUpdatePartialUpdatePhoto) | **PATCH** /api/v1/photos/images/{id}/ | 
[**retrieveRetrieveAlbum**](PhotosApi.md#retrieveRetrieveAlbum) | **GET** /api/v1/photos/albums/{id}/ | 
[**updateUpdateAlbum**](PhotosApi.md#updateUpdateAlbum) | **PUT** /api/v1/photos/albums/{id}/ | 
[**updateUpdatePhoto**](PhotosApi.md#updateUpdatePhoto) | **PUT** /api/v1/photos/images/{id}/ | 


# **createCreateAlbum**
> Album createCreateAlbum(album)



Create album if the request user is allowed to.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var album = Album(); // Album | 

try { 
    var result = api_instance.createCreateAlbum(album);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->createCreateAlbum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **album** | [**Album**](Album.md)|  | [optional] 

### Return type

[**Album**](Album.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCreatePhoto**
> PhotoCreate createCreatePhoto(photoCreate)



Create photo if the request user is allowed to.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var photoCreate = PhotoCreate(); // PhotoCreate | 

try { 
    var result = api_instance.createCreatePhoto(photoCreate);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->createCreatePhoto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **photoCreate** | [**PhotoCreate**](PhotoCreate.md)|  | [optional] 

### Return type

[**PhotoCreate**](PhotoCreate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroyDestroyAlbum**
> destroyDestroyAlbum(id, search)



ViewSet class for an Album object.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this album.
var search = search_example; // String | A search term.

try { 
    api_instance.destroyDestroyAlbum(id, search);
} catch (e) {
    print("Exception when calling PhotosApi->destroyDestroyAlbum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this album. | [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAlbums**
> InlineResponse2007 listAlbums(limit, offset, search)



ViewSet class for an Album object.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.listAlbums(limit, offset, search);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->listAlbums: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePartialUpdateAlbum**
> Album partialUpdatePartialUpdateAlbum(id, search, album)



ViewSet class for an Album object.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this album.
var search = search_example; // String | A search term.
var album = Album(); // Album | 

try { 
    var result = api_instance.partialUpdatePartialUpdateAlbum(id, search, album);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->partialUpdatePartialUpdateAlbum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this album. | [default to null]
 **search** | **String**| A search term. | [optional] [default to null]
 **album** | [**Album**](Album.md)|  | [optional] 

### Return type

[**Album**](Album.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePartialUpdatePhoto**
> PhotoCreate partialUpdatePartialUpdatePhoto(id, photoCreate)



ViewSet class for a Photo object.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this photo.
var photoCreate = PhotoCreate(); // PhotoCreate | 

try { 
    var result = api_instance.partialUpdatePartialUpdatePhoto(id, photoCreate);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->partialUpdatePartialUpdatePhoto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this photo. | [default to null]
 **photoCreate** | [**PhotoCreate**](PhotoCreate.md)|  | [optional] 

### Return type

[**PhotoCreate**](PhotoCreate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveAlbum**
> Album retrieveRetrieveAlbum(id, search)



ViewSet class for an Album object.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this album.
var search = search_example; // String | A search term.

try { 
    var result = api_instance.retrieveRetrieveAlbum(id, search);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->retrieveRetrieveAlbum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this album. | [default to null]
 **search** | **String**| A search term. | [optional] [default to null]

### Return type

[**Album**](Album.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUpdateAlbum**
> Album updateUpdateAlbum(id, search, album)



Create album if the request user is allowed to.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this album.
var search = search_example; // String | A search term.
var album = Album(); // Album | 

try { 
    var result = api_instance.updateUpdateAlbum(id, search, album);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->updateUpdateAlbum: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this album. | [default to null]
 **search** | **String**| A search term. | [optional] [default to null]
 **album** | [**Album**](Album.md)|  | [optional] 

### Return type

[**Album**](Album.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUpdatePhoto**
> PhotoCreate updateUpdatePhoto(id, photoCreate)



Update photo if the request user is allowed to.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PhotosApi();
var id = id_example; // String | A unique integer value identifying this photo.
var photoCreate = PhotoCreate(); // PhotoCreate | 

try { 
    var result = api_instance.updateUpdatePhoto(id, photoCreate);
    print(result);
} catch (e) {
    print("Exception when calling PhotosApi->updateUpdatePhoto: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this photo. | [default to null]
 **photoCreate** | [**PhotoCreate**](PhotoCreate.md)|  | [optional] 

### Return type

[**PhotoCreate**](PhotoCreate.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

