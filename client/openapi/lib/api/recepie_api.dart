//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RecepieApi {
  RecepieApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /Recepie' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id:
  Future<Response> recepieDeleteWithHttpInfo({ int? id, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id:
  Future<void> recepieDelete({ int? id, }) async {
    final response = await recepieDeleteWithHttpInfo( id: id, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Recepie' operation and returns the [Response].
  Future<Response> recepieGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<List<Recepie>?> recepieGet() async {
    final response = await recepieGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Recepie>') as List)
        .cast<Recepie>()
        .toList();

    }
    return null;
  }

  /// Performs an HTTP 'PUT /Recepie/{id}/AddIngredient' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] recepieId:
  ///
  /// * [int] ingredientId:
  Future<Response> recepieIdAddIngredientPutWithHttpInfo(String id, { int? recepieId, int? ingredientId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie/{id}/AddIngredient'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (recepieId != null) {
      queryParams.addAll(_queryParams('', 'recepieId', recepieId));
    }
    if (ingredientId != null) {
      queryParams.addAll(_queryParams('', 'ingredientId', ingredientId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] recepieId:
  ///
  /// * [int] ingredientId:
  Future<void> recepieIdAddIngredientPut(String id, { int? recepieId, int? ingredientId, }) async {
    final response = await recepieIdAddIngredientPutWithHttpInfo(id,  recepieId: recepieId, ingredientId: ingredientId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /Recepie/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> recepieIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Recepie?> recepieIdGet(int id,) async {
    final response = await recepieIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recepie',) as Recepie;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /Recepie/{id}/RemoveIngredient' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] recepieId:
  ///
  /// * [int] ingredientId:
  Future<Response> recepieIdRemoveIngredientPutWithHttpInfo(String id, { int? recepieId, int? ingredientId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie/{id}/RemoveIngredient'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (recepieId != null) {
      queryParams.addAll(_queryParams('', 'recepieId', recepieId));
    }
    if (ingredientId != null) {
      queryParams.addAll(_queryParams('', 'ingredientId', ingredientId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] recepieId:
  ///
  /// * [int] ingredientId:
  Future<void> recepieIdRemoveIngredientPut(String id, { int? recepieId, int? ingredientId, }) async {
    final response = await recepieIdRemoveIngredientPutWithHttpInfo(id,  recepieId: recepieId, ingredientId: ingredientId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /Recepie' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Recepie] recepie:
  Future<Response> recepiePostWithHttpInfo({ Recepie? recepie, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Recepie';

    // ignore: prefer_final_locals
    Object? postBody = recepie;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Recepie] recepie:
  Future<void> recepiePost({ Recepie? recepie, }) async {
    final response = await recepiePostWithHttpInfo( recepie: recepie, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
