# openapi.api.IngredientsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ingredientsDelete**](IngredientsApi.md#ingredientsdelete) | **DELETE** /Ingredients | 
[**ingredientsGet**](IngredientsApi.md#ingredientsget) | **GET** /Ingredients | 
[**ingredientsIdGet**](IngredientsApi.md#ingredientsidget) | **GET** /Ingredients/{id} | 
[**ingredientsIdPut**](IngredientsApi.md#ingredientsidput) | **PUT** /Ingredients/{id} | 
[**ingredientsPost**](IngredientsApi.md#ingredientspost) | **POST** /Ingredients | 


# **ingredientsDelete**
> ingredientsDelete(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();
final id = 56; // int | 

try {
    api_instance.ingredientsDelete(id);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsDelete: $e\n');
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

# **ingredientsGet**
> List<Ingredient> ingredientsGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();

try {
    final result = api_instance.ingredientsGet();
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Ingredient>**](Ingredient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsIdGet**
> Ingredient ingredientsIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();
final id = 56; // int | 

try {
    final result = api_instance.ingredientsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Ingredient**](Ingredient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsIdPut**
> ingredientsIdPut(id, ingredient)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();
final id = 56; // int | 
final ingredient = Ingredient(); // Ingredient | 

try {
    api_instance.ingredientsIdPut(id, ingredient);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **ingredient** | [**Ingredient**](Ingredient.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingredientsPost**
> ingredientsPost(ingredient)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = IngredientsApi();
final ingredient = Ingredient(); // Ingredient | 

try {
    api_instance.ingredientsPost(ingredient);
} catch (e) {
    print('Exception when calling IngredientsApi->ingredientsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingredient** | [**Ingredient**](Ingredient.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

