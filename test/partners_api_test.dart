import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for PartnersApi
void main() {
  var instance = PartnersApi();

  group('tests for PartnersApi', () {
    // View set for partner events.
    //
    //Future<InlineResponse2003> listPartnerEvents({ int limit, int offset, String ordering }) async 
    test('test listPartnerEvents', () async {
      // TODO
    });

    // View set for partners.
    //
    //Future<InlineResponse2004> listPartners({ int limit, int offset }) async 
    test('test listPartners', () async {
      // TODO
    });

    // Return response with serialized partner event calender data.
    //
    //Future<Partner> retrieveCalendarjsPartner() async 
    test('test retrieveCalendarjsPartner', () async {
      // TODO
    });

    // View set for partners.
    //
    //Future<Partner> retrieveRetrievePartner(String id) async 
    test('test retrieveRetrievePartner', () async {
      // TODO
    });

    // View set for partner events.
    //
    //Future<PartnerEvent> retrieveRetrievePartnerEvent(String id, { String ordering }) async 
    test('test retrieveRetrievePartnerEvent', () async {
      // TODO
    });

  });
}
