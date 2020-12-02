# openapi.api.PizzasApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreateOrder**](PizzasApi.md#createCreateOrder) | **POST** /api/v1/pizzas/orders/ | 
[**destroyDestroyOrder**](PizzasApi.md#destroyDestroyOrder) | **DELETE** /api/v1/pizzas/orders/{id}/ | 
[**listOrders**](PizzasApi.md#listOrders) | **GET** /api/v1/pizzas/orders/ | 
[**listProducts**](PizzasApi.md#listProducts) | **GET** /api/v1/pizzas/ | 
[**partialUpdatePartialUpdateOrder**](PizzasApi.md#partialUpdatePartialUpdateOrder) | **PATCH** /api/v1/pizzas/orders/{id}/ | 
[**retrieveEventProduct**](PizzasApi.md#retrieveEventProduct) | **GET** /api/v1/pizzas/event/ | 
[**retrieveRetrieveOrder**](PizzasApi.md#retrieveRetrieveOrder) | **GET** /api/v1/pizzas/orders/{id}/ | 
[**updateUpdateOrder**](PizzasApi.md#updateUpdateOrder) | **PUT** /api/v1/pizzas/orders/{id}/ | 


# **createCreateOrder**
> Order createCreateOrder(order)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var order = Order(); // Order | 

try { 
    var result = api_instance.createCreateOrder(order);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->createCreateOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**Order**](Order.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroyDestroyOrder**
> destroyDestroyOrder(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var id = id_example; // String | A unique integer value identifying this order.

try { 
    api_instance.destroyDestroyOrder(id);
} catch (e) {
    print("Exception when calling PizzasApi->destroyDestroyOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this order. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrders**
> InlineResponse2006 listOrders(limit, offset)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.listOrders(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->listOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProducts**
> InlineResponse2005 listProducts(limit, offset)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.listProducts(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->listProducts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return per page. | [optional] [default to null]
 **offset** | **int**| The initial index from which to return the results. | [optional] [default to null]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **partialUpdatePartialUpdateOrder**
> Order partialUpdatePartialUpdateOrder(id, order)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var id = id_example; // String | A unique integer value identifying this order.
var order = Order(); // Order | 

try { 
    var result = api_instance.partialUpdatePartialUpdateOrder(id, order);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->partialUpdatePartialUpdateOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this order. | [default to null]
 **order** | [**Order**](Order.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveEventProduct**
> Pizza retrieveEventProduct()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();

try { 
    var result = api_instance.retrieveEventProduct();
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->retrieveEventProduct: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pizza**](Pizza.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveRetrieveOrder**
> Order retrieveRetrieveOrder(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var id = id_example; // String | A unique integer value identifying this order.

try { 
    var result = api_instance.retrieveRetrieveOrder(id);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->retrieveRetrieveOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this order. | [default to null]

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUpdateOrder**
> Order updateUpdateOrder(id, order)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = PizzasApi();
var id = id_example; // String | A unique integer value identifying this order.
var order = Order(); // Order | 

try { 
    var result = api_instance.updateUpdateOrder(id, order);
    print(result);
} catch (e) {
    print("Exception when calling PizzasApi->updateUpdateOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A unique integer value identifying this order. | [default to null]
 **order** | [**Order**](Order.md)|  | [optional] 

### Return type

[**Order**](Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

