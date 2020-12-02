part of openapi.api;



class PhotosApi {
  final ApiClient apiClient;

  PhotosApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Create album if the request user is allowed to.
  Future<Response> createCreateAlbumWithHttpInfo({ Album album }) async {
    Object postBody = album;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/photos/albums/".replaceAll("{format}","json");

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
  /// Create album if the request user is allowed to.
  Future<Album> createCreateAlbum({ Album album }) async {
    Response response = await createCreateAlbumWithHttpInfo( album: album );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Album') as Album;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Create photo if the request user is allowed to.
  Future<Response> createCreatePhotoWithHttpInfo({ PhotoCreate photoCreate }) async {
    Object postBody = photoCreate;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/photos/images/".replaceAll("{format}","json");

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
  /// Create photo if the request user is allowed to.
  Future<PhotoCreate> createCreatePhoto({ PhotoCreate photoCreate }) async {
    Response response = await createCreatePhotoWithHttpInfo( photoCreate: photoCreate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PhotoCreate') as PhotoCreate;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// ViewSet class for an Album object.
  Future destroyDestroyAlbumWithHttpInfo(String id, { String search }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/albums/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }

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
  /// ViewSet class for an Album object.
  Future destroyDestroyAlbum(String id, { String search }) async {
    Response response = await destroyDestroyAlbumWithHttpInfo(id,  search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  ///  with HTTP info returned
  ///
  /// ViewSet class for an Album object.
  Future<Response> listAlbumsWithHttpInfo({ int limit, int offset, String search }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/photos/albums/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }

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
  /// ViewSet class for an Album object.
  Future<InlineResponse2007> listAlbums({ int limit, int offset, String search }) async {
    Response response = await listAlbumsWithHttpInfo( limit: limit, offset: offset, search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2007') as InlineResponse2007;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// ViewSet class for an Album object.
  Future<Response> partialUpdatePartialUpdateAlbumWithHttpInfo(String id, { String search, Album album }) async {
    Object postBody = album;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/albums/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }

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
  /// ViewSet class for an Album object.
  Future<Album> partialUpdatePartialUpdateAlbum(String id, { String search, Album album }) async {
    Response response = await partialUpdatePartialUpdateAlbumWithHttpInfo(id,  search: search, album: album );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Album') as Album;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// ViewSet class for a Photo object.
  Future<Response> partialUpdatePartialUpdatePhotoWithHttpInfo(String id, { PhotoCreate photoCreate }) async {
    Object postBody = photoCreate;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/images/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// ViewSet class for a Photo object.
  Future<PhotoCreate> partialUpdatePartialUpdatePhoto(String id, { PhotoCreate photoCreate }) async {
    Response response = await partialUpdatePartialUpdatePhotoWithHttpInfo(id,  photoCreate: photoCreate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PhotoCreate') as PhotoCreate;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// ViewSet class for an Album object.
  Future<Response> retrieveRetrieveAlbumWithHttpInfo(String id, { String search }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/albums/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }

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
  /// ViewSet class for an Album object.
  Future<Album> retrieveRetrieveAlbum(String id, { String search }) async {
    Response response = await retrieveRetrieveAlbumWithHttpInfo(id,  search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Album') as Album;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Create album if the request user is allowed to.
  Future<Response> updateUpdateAlbumWithHttpInfo(String id, { String search, Album album }) async {
    Object postBody = album;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/albums/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }

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
  /// Create album if the request user is allowed to.
  Future<Album> updateUpdateAlbum(String id, { String search, Album album }) async {
    Response response = await updateUpdateAlbumWithHttpInfo(id,  search: search, album: album );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Album') as Album;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Update photo if the request user is allowed to.
  Future<Response> updateUpdatePhotoWithHttpInfo(String id, { PhotoCreate photoCreate }) async {
    Object postBody = photoCreate;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/photos/images/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Update photo if the request user is allowed to.
  Future<PhotoCreate> updateUpdatePhoto(String id, { PhotoCreate photoCreate }) async {
    Response response = await updateUpdatePhotoWithHttpInfo(id,  photoCreate: photoCreate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PhotoCreate') as PhotoCreate;
    } else {
      return null;
    }
  }

}
