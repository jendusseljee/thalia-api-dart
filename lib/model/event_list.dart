part of openapi.api;

class EventList {
  
  int pk = null;
  
  String title = null;
  
  String description = null;
  
  DateTime start = null;
  
  DateTime end = null;
  
  String location = null;
  
  String price = null;
  
  String registered = null;
  
  String present = null;
  
  String pizza = null;
  
  String registrationAllowed = null;
  EventList();

  @override
  String toString() {
    return 'EventList[pk=$pk, title=$title, description=$description, start=$start, end=$end, location=$location, price=$price, registered=$registered, present=$present, pizza=$pizza, registrationAllowed=$registrationAllowed, ]';
  }

  EventList.fromJson(Map<String, dynamic> json) {
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
    price = json['price'];
    registered = json['registered'];
    present = json['present'];
    pizza = json['pizza'];
    registrationAllowed = json['registration_allowed'];
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
    if (price != null)
      json['price'] = price;
    if (registered != null)
      json['registered'] = registered;
    if (present != null)
      json['present'] = present;
    if (pizza != null)
      json['pizza'] = pizza;
    if (registrationAllowed != null)
      json['registration_allowed'] = registrationAllowed;
    return json;
  }

  static List<EventList> listFromJson(List<dynamic> json) {
    return json == null ? List<EventList>() : json.map((value) => EventList.fromJson(value)).toList();
  }

  static Map<String, EventList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EventList-objects as value to a dart map
  static Map<String, List<EventList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EventList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EventList.listFromJson(value);
       });
     }
     return map;
  }
}

