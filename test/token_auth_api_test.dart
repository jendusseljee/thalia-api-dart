import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for TokenAuthApi
void main() {
  var instance = TokenAuthApi();

  group('tests for TokenAuthApi', () {
    // Custom override of the AuthToken view to force lowercase the username
    //
    //Future<AuthToken> createAuthToken(String username, String password, { String token }) async 
    test('test createAuthToken', () async {
      // TODO
    });

  });
}
