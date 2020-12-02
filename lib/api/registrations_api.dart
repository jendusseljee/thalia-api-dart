part of openapi.api;



class RegistrationsApi {
  final ApiClient apiClient;

  RegistrationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future destroyDestroyEventRegistrationWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/registrations/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future destroyDestroyEventRegistration(String id) async {
    Response response = await destroyDestroyEventRegistrationWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<Response> partialUpdatePartialUpdateEventRegistrationWithHttpInfo(String id, { EventRegistration eventRegistration }) async {
    Object postBody = eventRegistration;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/registrations/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","multipart/form-data"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<EventRegistration> partialUpdatePartialUpdateEventRegistration(String id, { EventRegistration eventRegistration }) async {
    Response response = await partialUpdatePartialUpdateEventRegistrationWithHttpInfo(id,  eventRegistration: eventRegistration );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventRegistration') as EventRegistration;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<Response> retrieveRetrieveEventRegistrationWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/registrations/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<EventRegistration> retrieveRetrieveEventRegistration(String id) async {
    Response response = await retrieveRetrieveEventRegistrationWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventRegistration') as EventRegistration;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<Response> updateUpdateEventRegistrationWithHttpInfo(String id, { EventRegistration eventRegistration }) async {
    Object postBody = eventRegistration;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/registrations/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","application/x-www-form-urlencoded","multipart/form-data"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// Defines the viewset for registrations, requires an authenticated user. Has custom update and destroy methods that use the services.
  Future<EventRegistration> updateUpdateEventRegistration(String id, { EventRegistration eventRegistration }) async {
    Response response = await updateUpdateEventRegistrationWithHttpInfo(id,  eventRegistration: eventRegistration );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventRegistration') as EventRegistration;
    } else {
      return null;
    }
  }

}
