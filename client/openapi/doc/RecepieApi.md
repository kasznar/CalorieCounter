# openapi.api.RecepieApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recepieDelete**](RecepieApi.md#recepiedelete) | **DELETE** /Recepie | 
[**recepieGet**](RecepieApi.md#recepieget) | **GET** /Recepie | 
[**recepieIdAddIngredientPut**](RecepieApi.md#recepieidaddingredientput) | **PUT** /Recepie/{id}/AddIngredient | 
[**recepieIdGet**](RecepieApi.md#recepieidget) | **GET** /Recepie/{id} | 
[**recepieIdRemoveIngredientPut**](RecepieApi.md#recepieidremoveingredientput) | **PUT** /Recepie/{id}/RemoveIngredient | 
[**recepiePost**](RecepieApi.md#recepiepost) | **POST** /Recepie | 


# **recepieDelete**
> recepieDelete(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();
final id = 56; // int | 

try {
    api_instance.recepieDelete(id);
} catch (e) {
    print('Exception when calling RecepieApi->recepieDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recepieGet**
> List<Recepie> recepieGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();

try {
    final result = api_instance.recepieGet();
    print(result);
} catch (e) {
    print('Exception when calling RecepieApi->recepieGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Recepie>**](Recepie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recepieIdAddIngredientPut**
> recepieIdAddIngredientPut(id, recepieId, ingredientId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();
final id = id_example; // String | 
final recepieId = 56; // int | 
final ingredientId = 56; // int | 

try {
    api_instance.recepieIdAddIngredientPut(id, recepieId, ingredientId);
} catch (e) {
    print('Exception when calling RecepieApi->recepieIdAddIngredientPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **recepieId** | **int**|  | [optional] 
 **ingredientId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recepieIdGet**
> Recepie recepieIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();
final id = 56; // int | 

try {
    final result = api_instance.recepieIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling RecepieApi->recepieIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Recepie**](Recepie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recepieIdRemoveIngredientPut**
> recepieIdRemoveIngredientPut(id, recepieId, ingredientId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();
final id = id_example; // String | 
final recepieId = 56; // int | 
final ingredientId = 56; // int | 

try {
    api_instance.recepieIdRemoveIngredientPut(id, recepieId, ingredientId);
} catch (e) {
    print('Exception when calling RecepieApi->recepieIdRemoveIngredientPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **recepieId** | **int**|  | [optional] 
 **ingredientId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recepiePost**
> recepiePost(recepie)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RecepieApi();
final recepie = Recepie(); // Recepie | 

try {
    api_instance.recepiePost(recepie);
} catch (e) {
    print('Exception when calling RecepieApi->recepiePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recepie** | [**Recepie**](Recepie.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

