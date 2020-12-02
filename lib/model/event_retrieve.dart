part of openapi.api;

class EventRetrieve {
  
  int pk = null;
  
  String title = null;
  
  String description = null;
  
  DateTime start = null;
  
  DateTime end = null;
  
  int organiser = null;
  /* Alumni: Events organised for alumni, Education: Education focused events, Career: Career focused events, Leisure: borrels, parties, game activities etc., Association Affairs: general meetings or any other board related events, Other: anything else. */
  String category = null;
  //enum categoryEnum {  alumni,  education,  career,  leisure,  association,  other,  };{
  /* If you set a registration period registration will be required. If you don't set one, registration won't be required. Prefer times when people don't have lectures, e.g. 12:30 instead of 13:37. */
  DateTime registrationStart = null;
  /* If you set a registration period registration will be required. If you don't set one, registration won't be required. */
  DateTime registrationEnd = null;
  
  DateTime cancelDeadline = null;
  
  String location = null;
  /* Location of Huygens: Heyendaalseweg 135, Nijmegen. Location of Mercator 1: Toernooiveld 212, Nijmegen. Not shown as text!! */
  String mapLocation = null;
  
  String price = null;
  /* Fine if participant does not show up (at least €5). */
  String fine = null;
  
  int maxParticipants = null;
  
  String numParticipants = null;
  
  String userRegistration = null;
  
  String registrationAllowed = null;
  
  String noRegistrationMessage = null;
  
  String hasFields = null;
  
  String isPizzaEvent = null;
  
  String googleMapsUrl = null;
  
  String isAdmin = null;
  EventRetrieve();

  @override
  String toString() {
    return 'EventRetrieve[pk=$pk, title=$title, description=$description, start=$start, end=$end, organiser=$organiser, category=$category, registrationStart=$registrationStart, registrationEnd=$registrationEnd, cancelDeadline=$cancelDeadline, location=$location, mapLocation=$mapLocation, price=$price, fine=$fine, maxParticipants=$maxParticipants, numParticipants=$numParticipants, userRegistration=$userRegistration, registrationAllowed=$registrationAllowed, noRegistrationMessage=$noRegistrationMessage, hasFields=$hasFields, isPizzaEvent=$isPizzaEvent, googleMapsUrl=$googleMapsUrl, isAdmin=$isAdmin, ]';
  }

  EventRetrieve.fromJson(Map<String, dynamic> json) {
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
    organiser = json['organiser'];
    category = json['category'];
    registrationStart = (json['registration_start'] == null) ?
      null :
      DateTime.parse(json['registration_start']);
    registrationEnd = (json['registration_end'] == null) ?
      null :
      DateTime.parse(json['registration_end']);
    cancelDeadline = (json['cancel_deadline'] == null) ?
      null :
      DateTime.parse(json['cancel_deadline']);
    location = json['location'];
    mapLocation = json['map_location'];
    price = json['price'];
    fine = json['fine'];
    maxParticipants = json['max_participants'];
    numParticipants = json['num_participants'];
    userRegistration = json['user_registration'];
    registrationAllowed = json['registration_allowed'];
    noRegistrationMessage = json['no_registration_message'];
    hasFields = json['has_fields'];
    isPizzaEvent = json['is_pizza_event'];
    googleMapsUrl = json['google_maps_url'];
    isAdmin = json['is_admin'];
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
    if (organiser != null)
      json['organiser'] = organiser;
    if (category != null)
      json['category'] = category;
      json['registration_start'] = registrationStart == null ? null : registrationStart.toUtc().toIso8601String();
      json['registration_end'] = registrationEnd == null ? null : registrationEnd.toUtc().toIso8601String();
      json['cancel_deadline'] = cancelDeadline == null ? null : cancelDeadline.toUtc().toIso8601String();
    if (location != null)
      json['location'] = location;
    if (mapLocation != null)
      json['map_location'] = mapLocation;
    if (price != null)
      json['price'] = price;
    if (fine != null)
      json['fine'] = fine;
      json['max_participants'] = maxParticipants;
    if (numParticipants != null)
      json['num_participants'] = numParticipants;
    if (userRegistration != null)
      json['user_registration'] = userRegistration;
    if (registrationAllowed != null)
      json['registration_allowed'] = registrationAllowed;
    if (noRegistrationMessage != null)
      json['no_registration_message'] = noRegistrationMessage;
    if (hasFields != null)
      json['has_fields'] = hasFields;
    if (isPizzaEvent != null)
      json['is_pizza_event'] = isPizzaEvent;
    if (googleMapsUrl != null)
      json['google_maps_url'] = googleMapsUrl;
    if (isAdmin != null)
      json['is_admin'] = isAdmin;
    return json;
  }

  static List<EventRetrieve> listFromJson(List<dynamic> json) {
    return json == null ? List<EventRetrieve>() : json.map((value) => EventRetrieve.fromJson(value)).toList();
  }

  static Map<String, EventRetrieve> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventRetrieve>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventRetrieve.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EventRetrieve-objects as value to a dart map
  static Map<String, List<EventRetrieve>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EventRetrieve>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EventRetrieve.listFromJson(value);
       });
     }
     return map;
  }
}

