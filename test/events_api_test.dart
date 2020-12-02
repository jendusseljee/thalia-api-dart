import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for EventsApi
void main() {
  var instance = EventsApi();

  group('tests for EventsApi', () {
    // Defines a custom route for the event's registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
    //
    //Future<EventsCalenderJS> createRegistrationsEvent(String id, { EventsCalenderJS eventsCalenderJS }) async 
    test('test createRegistrationsEvent', () async {
      // TODO
    });

    // Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
    //
    //Future<InlineResponse2001> listEvents({ int limit, int offset, String ordering, String search }) async 
    test('test listEvents', () async {
      // TODO
    });

    // Defines a custom route that outputs the correctly formatted events information for CalendarJS, published events only :param request: the request object  :return: response containing the data
    //
    //Future<EventsCalenderJS> retrieveCalendarjsEvent() async 
    test('test retrieveCalendarjsEvent', () async {
      // TODO
    });

    // Defines a custom route for the event's registrations, can filter on registration status if the user is an organiser  :param request: the request object :param pk: the primary key of the event :return: the registrations of the event
    //
    //Future<EventsCalenderJS> retrieveRegistrationsEvent(String id) async 
    test('test retrieveRegistrationsEvent', () async {
      // TODO
    });

    // Defines the viewset for events, requires an authenticated user and enables ordering on the event start/end.
    //
    //Future<EventRetrieve> retrieveRetrieveEvent(String id, { String ordering, String search }) async 
    test('test retrieveRetrieveEvent', () async {
      // TODO
    });

    // Defines a custom route that outputs the correctly formatted events information for CalendarJS, unpublished events only  :param request: the request object :return: response containing the data
    //
    //Future<EventsCalenderJS> retrieveUnpublishedEvent() async 
    test('test retrieveUnpublishedEvent', () async {
      // TODO
    });

  });
}
