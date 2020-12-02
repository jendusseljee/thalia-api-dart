part of openapi.api;

class Album {
  
  int pk = null;
  
  String title = null;
  
  DateTime date = null;
  
  bool hidden = null;
  
  bool shareable = null;
  
  String accessible = null;
  
  String photos = null;
  Album();

  @override
  String toString() {
    return 'Album[pk=$pk, title=$title, date=$date, hidden=$hidden, shareable=$shareable, accessible=$accessible, photos=$photos, ]';
  }

  Album.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    title = json['title'];
    date = (json['date'] == null) ?
      null :
      DateTime.parse(json['date']);
    hidden = json['hidden'];
    shareable = json['shareable'];
    accessible = json['accessible'];
    photos = json['photos'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (title != null)
      json['title'] = title;
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (hidden != null)
      json['hidden'] = hidden;
    if (shareable != null)
      json['shareable'] = shareable;
    if (accessible != null)
      json['accessible'] = accessible;
    if (photos != null)
      json['photos'] = photos;
    return json;
  }

  static List<Album> listFromJson(List<dynamic> json) {
    return json == null ? List<Album>() : json.map((value) => Album.fromJson(value)).toList();
  }

  static Map<String, Album> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Album>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Album.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Album-objects as value to a dart map
  static Map<String, List<Album>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Album>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Album.listFromJson(value);
       });
     }
     return map;
  }
}

