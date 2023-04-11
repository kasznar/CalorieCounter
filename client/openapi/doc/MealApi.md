# openapi.api.MealApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mealGet**](MealApi.md#mealget) | **GET** /Meal | 
[**mealIdGet**](MealApi.md#mealidget) | **GET** /Meal/{id} | 
[**mealPost**](MealApi.md#mealpost) | **POST** /Meal | 


# **mealGet**
> List<MealDto> mealGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealApi();

try {
    final result = api_instance.mealGet();
    print(result);
} catch (e) {
    print('Exception when calling MealApi->mealGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MealDto>**](MealDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealIdGet**
> Meal mealIdGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealApi();
final id = 56; // int | 

try {
    final result = api_instance.mealIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling MealApi->mealIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Meal**](Meal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mealPost**
> mealPost(createMealDto)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MealApi();
final createMealDto = CreateMealDto(); // CreateMealDto | 

try {
    api_instance.mealPost(createMealDto);
} catch (e) {
    print('Exception when calling MealApi->mealPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMealDto** | [**CreateMealDto**](CreateMealDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

