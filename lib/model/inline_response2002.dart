part of openapi.api;

class InlineResponse2002 {
  
  int count = null;
  
  String next = null;
  
  String previous = null;
  
  List<MemberList> results = [];
  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      MemberList.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
      json['next'] = next;
      json['previous'] = previous;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2002>() : json.map((value) => InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2002>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2002.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2002-objects as value to a dart map
  static Map<String, List<InlineResponse2002>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2002>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2002.listFromJson(value);
       });
     }
     return map;
  }
}

