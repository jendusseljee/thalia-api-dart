part of openapi.api;

class EventsCalenderJS {
  
  String start = null;
  
  String end = null;
  
  String allDay = null;
  
  String isBirthday = null;
  
  String url = null;
  
  String title = null;
  
  String description = null;
  
  String classNames = null;
  
  String blank = null;
  EventsCalenderJS();

  @override
  String toString() {
    return 'EventsCalenderJS[start=$start, end=$end, allDay=$allDay, isBirthday=$isBirthday, url=$url, title=$title, description=$description, classNames=$classNames, blank=$blank, ]';
  }

  EventsCalenderJS.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    start = json['start'];
    end = json['end'];
    allDay = json['allDay'];
    isBirthday = json['isBirthday'];
    url = json['url'];
    title = json['title'];
    description = json['description'];
    classNames = json['classNames'];
    blank = json['blank'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (start != null)
      json['start'] = start;
    if (end != null)
      json['end'] = end;
    if (allDay != null)
      json['allDay'] = allDay;
    if (isBirthday != null)
      json['isBirthday'] = isBirthday;
    if (url != null)
      json['url'] = url;
    if (title != null)
      json['title'] = title;
    if (description != null)
      json['description'] = description;
    if (classNames != null)
      json['classNames'] = classNames;
    if (blank != null)
      json['blank'] = blank;
    return json;
  }

  static List<EventsCalenderJS> listFromJson(List<dynamic> json) {
    return json == null ? List<EventsCalenderJS>() : json.map((value) => EventsCalenderJS.fromJson(value)).toList();
  }

  static Map<String, EventsCalenderJS> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventsCalenderJS>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventsCalenderJS.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EventsCalenderJS-objects as value to a dart map
  static Map<String, List<EventsCalenderJS>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EventsCalenderJS>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EventsCalenderJS.listFromJson(value);
       });
     }
     return map;
  }
}

