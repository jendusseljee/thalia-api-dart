part of openapi.api;



class TokenAuthApi {
  final ApiClient apiClient;

  TokenAuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Custom override of the AuthToken view to force lowercase the username
  Future<Response> createAuthTokenWithHttpInfo(String username, String password, { String token }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }
    if(password == null) {
     throw ApiException(400, "Missing required param: password");
    }

    // create path and map variables
    String path = "/api/v1/token-auth/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/x-www-form-urlencoded","multipart/form-data","application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (username != null) {
        hasFields = true;
        mp.fields['username'] = parameterToString(username);
      }
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = parameterToString(password);
      }
      if (token != null) {
        hasFields = true;
        mp.fields['token'] = parameterToString(token);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (username != null)
        formParams['username'] = parameterToString(username);
      if (password != null)
        formParams['password'] = parameterToString(password);
      if (token != null)
        formParams['token'] = parameterToString(token);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
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
  /// Custom override of the AuthToken view to force lowercase the username
  Future<AuthToken> createAuthToken(String username, String password, { String token }) async {
    Response response = await createAuthTokenWithHttpInfo(username, password,  token: token );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AuthToken') as AuthToken;
    } else {
      return null;
    }
  }

}
