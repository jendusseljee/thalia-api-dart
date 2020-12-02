part of openapi.api;



class EventsApi {
  final ApiClient apiClient;

  EventsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// Defines a custom route for the event&#39;s registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
  Future<Response> createRegistrationsEventWithHttpInfo(String id, { EventsCalenderJS eventsCalenderJS }) async {
    Object postBody = eventsCalenderJS;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/events/{id}/registrations/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Defines a custom route for the event&#39;s registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
  Future<EventsCalenderJS> createRegistrationsEvent(String id, { EventsCalenderJS eventsCalenderJS }) async {
    Response response = await createRegistrationsEventWithHttpInfo(id,  eventsCalenderJS: eventsCalenderJS );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventsCalenderJS') as EventsCalenderJS;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
  Future<Response> listEventsWithHttpInfo({ int limit, int offset, String ordering, String search }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/events/".replaceAll("{format}","json");

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
  /// Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
  Future<InlineResponse2001> listEvents({ int limit, int offset, String ordering, String search }) async {
    Response response = await listEventsWithHttpInfo( limit: limit, offset: offset, ordering: ordering, search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2001') as InlineResponse2001;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines a custom route that outputs the correctly formatted events information for CalendarJS, published events only :param request: the request object  :return: response containing the data
  Future<Response> retrieveCalendarjsEventWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/events/calendarjs/".replaceAll("{format}","json");

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
  /// Defines a custom route that outputs the correctly formatted events information for CalendarJS, published events only :param request: the request object  :return: response containing the data
  Future<EventsCalenderJS> retrieveCalendarjsEvent() async {
    Response response = await retrieveCalendarjsEventWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventsCalenderJS') as EventsCalenderJS;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines a custom route for the event&#39;s registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
  Future<Response> retrieveRegistrationsEventWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/events/{id}/registrations/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Defines a custom route for the event&#39;s registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
  Future<EventsCalenderJS> retrieveRegistrationsEvent(String id) async {
    Response response = await retrieveRegistrationsEventWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventsCalenderJS') as EventsCalenderJS;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
  Future<Response> retrieveRetrieveEventWithHttpInfo(String id, { String ordering, String search }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v1/events/{id}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
  Future<EventRetrieve> retrieveRetrieveEvent(String id, { String ordering, String search }) async {
    Response response = await retrieveRetrieveEventWithHttpInfo(id,  ordering: ordering, search: search );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventRetrieve') as EventRetrieve;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// Defines a custom route that outputs the correctly formatted events information for CalendarJS, unpublished events only  :param request: the request object :return: response containing the data
  Future<Response> retrieveUnpublishedEventWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/events/unpublished/".replaceAll("{format}","json");

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
  /// Defines a custom route that outputs the correctly formatted events information for CalendarJS, unpublished events only  :param request: the request object :return: response containing the data
  Future<EventsCalenderJS> retrieveUnpublishedEvent() async {
    Response response = await retrieveUnpublishedEventWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EventsCalenderJS') as EventsCalenderJS;
    } else {
      return null;
    }
  }

}
