part of openapi.api;

class PartnerEvent {
  
  int pk = null;
  
  String title = null;
  
  String description = null;
  
  DateTime start = null;
  
  DateTime end = null;
  
  String location = null;
  
  String url = null;
  PartnerEvent();

  @override
  String toString() {
    return 'PartnerEvent[pk=$pk, title=$title, description=$description, start=$start, end=$end, location=$location, url=$url, ]';
  }

  PartnerEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    title = json['title'];
    description = json['description'];
    start = (json['start'] == null) ?
      null :
      DateTime.parse(json['start']);
    end = (json['end'] == null) ?
      null :
      DateTime.parse(json['end']);
    location = json['location'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (title != null)
      json['title'] = title;
    if (description != null)
      json['description'] = description;
    if (start != null)
      json['start'] = start == null ? null : start.toUtc().toIso8601String();
    if (end != null)
      json['end'] = end == null ? null : end.toUtc().toIso8601String();
    if (location != null)
      json['location'] = location;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<PartnerEvent> listFromJson(List<dynamic> json) {
    return json == null ? List<PartnerEvent>() : json.map((value) => PartnerEvent.fromJson(value)).toList();
  }

  static Map<String, PartnerEvent> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PartnerEvent>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PartnerEvent.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PartnerEvent-objects as value to a dart map
  static Map<String, List<PartnerEvent>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PartnerEvent>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PartnerEvent.listFromJson(value);
       });
     }
     return map;
  }
}

