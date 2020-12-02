part of openapi.api;

class InlineResponse2005 {
  
  int count = null;
  
  String next = null;
  
  String previous = null;
  
  List<Pizza> results = [];
  InlineResponse2005();

  @override
  String toString() {
    return 'InlineResponse2005[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      Pizza.listFromJson(json['results']);
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

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2005>() : json.map((value) => InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2005>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2005.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2005-objects as value to a dart map
  static Map<String, List<InlineResponse2005>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2005>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2005.listFromJson(value);
       });
     }
     return map;
  }
}

