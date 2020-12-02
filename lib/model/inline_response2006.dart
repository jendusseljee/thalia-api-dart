part of openapi.api;

class InlineResponse2006 {
  
  int count = null;
  
  String next = null;
  
  String previous = null;
  
  List<Order> results = [];
  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      Order.listFromJson(json['results']);
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

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2006>() : json.map((value) => InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2006>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2006.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2006-objects as value to a dart map
  static Map<String, List<InlineResponse2006>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2006>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2006.listFromJson(value);
       });
     }
     return map;
  }
}

