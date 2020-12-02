part of openapi.api;

class AuthToken {
  
  String username = null;
  
  String password = null;
  
  String token = null;
  AuthToken();

  @override
  String toString() {
    return 'AuthToken[username=$username, password=$password, token=$token, ]';
  }

  AuthToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (username != null)
      json['username'] = username;
    if (password != null)
      json['password'] = password;
    if (token != null)
      json['token'] = token;
    return json;
  }

  static List<AuthToken> listFromJson(List<dynamic> json) {
    return json == null ? List<AuthToken>() : json.map((value) => AuthToken.fromJson(value)).toList();
  }

  static Map<String, AuthToken> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AuthToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthToken.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthToken-objects as value to a dart map
  static Map<String, List<AuthToken>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AuthToken>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AuthToken.listFromJson(value);
       });
     }
     return map;
  }
}

