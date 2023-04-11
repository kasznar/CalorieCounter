# openapi.api.MealTypesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mealTypesGet**](MealTypesApi.md#mealtypesget) | **GET** /MealTypes | 
[**mealTypesIdDelete**](MealTypesApi.md#mealtypesiddelete) | **DELETE** /MealTypes/{id} | 
[**mealTypesIdGet**](MealTypesApi.md#mealtypesidget) | **GET** /MealTypes/{id} | 
[**mealTypesIdPut**](MealTypesApi.md#mealtypesidput) | **PUT** /MealTypes/{id} | 
[**mealTypesPost**](MealTypesApi.md#mealtypespost) | **POST** /MealTypes | 


# **mealTypesGet**
> List<MealType> mealTypesGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealTypesApi();

try {
    final result = api_instance.mealTypesGet();
    print(result);
} catch (e) {
    print('Exception when calling MealTypesApi->mealTypesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MealType>**](MealType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealTypesIdDelete**
> mealTypesIdDelete(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealTypesApi();
final id = 56; // int | 

try {
    api_instance.mealTypesIdDelete(id);
} catch (e) {
    print('Exception when calling MealTypesApi->mealTypesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealTypesIdGet**
> MealType mealTypesIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealTypesApi();
final id = 56; // int | 

try {
    final result = api_instance.mealTypesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling MealTypesApi->mealTypesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**MealType**](MealType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealTypesIdPut**
> mealTypesIdPut(id, newName)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealTypesApi();
final id = 56; // int | 
final newName = newName_example; // String | 

try {
    api_instance.mealTypesIdPut(id, newName);
} catch (e) {
    print('Exception when calling MealTypesApi->mealTypesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **newName** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealTypesPost**
> mealTypesPost(mealType)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealTypesApi();
final mealType = MealType(); // MealType | 

try {
    api_instance.mealTypesPost(mealType);
} catch (e) {
    print('Exception when calling MealTypesApi->mealTypesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mealType** | [**MealType**](MealType.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

