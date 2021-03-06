part of openapi.api;



class MembersApi {
  final ApiClient apiClient;

  MembersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Viewset that renders or edits a member
  Future<Response> listMembersWithHttpInfo({ int limit, int offset, String ordering, String search }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/members/".replaceAll("{format}","json");

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
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
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
  /// Viewset that renders or edits a member
  Future<InlineResponse2002> listMembers({ int limit, int offset, String ordering, String search }) async {
    Response response = await listMembersWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2002') as InlineResponse2002;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Viewset that renders or edits a member
  Future<Response> retrieveBirthdaysMemberWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/members/birthdays/".replaceAll("{format}","json");

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
  /// Viewset that renders or edits a member
  Future<MemberList> retrieveBirthdaysMember() async {
    Response response = await retrieveBirthdaysMemberWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MemberList') as MemberList;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Viewset that renders or edits a member
  Future<Response> retrieveRetrieveMemberWithHttpInfo(String id, { String ordering, String search }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/members/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
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
  /// Viewset that renders or edits a member
  Future<ProfileRetrieve> retrieveRetrieveMember(String id, { String ordering, String search }) async {
    Response response = await retrieveRetrieveMemberWithHttpInfo(id,  ordering: ordering, search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ProfileRetrieve') as ProfileRetrieve;
    } else {
      return null;
    }
  }

}
