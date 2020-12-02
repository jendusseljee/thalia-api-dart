part of openapi.api;

class InlineResponse2003 {
  
  int count = null;
  
  String next = null;
  
  String previous = null;
  
  List<PartnerEvent> results = [];
  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      PartnerEvent.listFromJson(json['results']);
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

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2003>() : json.map((value) => InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2003>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2003.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2003-objects as value to a dart map
  static Map<String, List<InlineResponse2003>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2003>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2003.listFromJson(value);
       });
     }
     return map;
  }
}

