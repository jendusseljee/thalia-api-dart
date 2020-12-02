part of openapi.api;

class AlbumList {
  
  int pk = null;
  
  String title = null;
  
  DateTime date = null;
  
  bool hidden = null;
  
  bool shareable = null;
  
  String accessible = null;
  
  AlbumListCover cover = null;
  AlbumList();

  @override
  String toString() {
    return 'AlbumList[pk=$pk, title=$title, date=$date, hidden=$hidden, shareable=$shareable, accessible=$accessible, cover=$cover, ]';
  }

  AlbumList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    title = json['title'];
    date = (json['date'] == null) ?
      null :
      DateTime.parse(json['date']);
    hidden = json['hidden'];
    shareable = json['shareable'];
    accessible = json['accessible'];
    cover = (json['cover'] == null) ?
      null :
      AlbumListCover.fromJson(json['cover']);
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
    if (cover != null)
      json['cover'] = cover;
    return json;
  }

  static List<AlbumList> listFromJson(List<dynamic> json) {
    return json == null ? List<AlbumList>() : json.map((value) => AlbumList.fromJson(value)).toList();
  }

  static Map<String, AlbumList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AlbumList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AlbumList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AlbumList-objects as value to a dart map
  static Map<String, List<AlbumList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AlbumList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AlbumList.listFromJson(value);
       });
     }
     return map;
  }
}

