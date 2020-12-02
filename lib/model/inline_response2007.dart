part of openapi.api;

class InlineResponse2007 {
  
  int count = null;
  
  String next = null;
  
  String previous = null;
  
  List<AlbumList> results = [];
  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[count=$count, next=$next, previous=$previous, results=$results, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = (json['results'] == null) ?
      null :
      AlbumList.listFromJson(json['results']);
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

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2007>() : json.map((value) => InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2007>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2007.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2007-objects as value to a dart map
  static Map<String, List<InlineResponse2007>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2007>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2007.listFromJson(value);
       });
     }
     return map;
  }
}

