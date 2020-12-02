part of openapi.api;

class EventRegistration {
  
  int pk = null;
  
  String member = null;
  
  String name = null;
  
  String photo = null;
  
  String avatar = null;
  
  DateTime registeredOn = null;
  
  String isLateCancellation = null;
  
  String isCancelled = null;
  
  String queuePosition = null;
  
  String payment = null;
  //enum paymentEnum {  cash_payment,  card_payment,  tpay_payment,  wire_payment,  no_payment,  };{
  
  bool present = null;
  EventRegistration();

  @override
  String toString() {
    return 'EventRegistration[pk=$pk, member=$member, name=$name, photo=$photo, avatar=$avatar, registeredOn=$registeredOn, isLateCancellation=$isLateCancellation, isCancelled=$isCancelled, queuePosition=$queuePosition, payment=$payment, present=$present, ]';
  }

  EventRegistration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    member = json['member'];
    name = json['name'];
    photo = json['photo'];
    avatar = json['avatar'];
    registeredOn = (json['registered_on'] == null) ?
      null :
      DateTime.parse(json['registered_on']);
    isLateCancellation = json['is_late_cancellation'];
    isCancelled = json['is_cancelled'];
    queuePosition = json['queue_position'];
    payment = json['payment'];
    present = json['present'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (member != null)
      json['member'] = member;
    if (name != null)
      json['name'] = name;
    if (photo != null)
      json['photo'] = photo;
    if (avatar != null)
      json['avatar'] = avatar;
    if (registeredOn != null)
      json['registered_on'] = registeredOn == null ? null : registeredOn.toUtc().toIso8601String();
    if (isLateCancellation != null)
      json['is_late_cancellation'] = isLateCancellation;
    if (isCancelled != null)
      json['is_cancelled'] = isCancelled;
    if (queuePosition != null)
      json['queue_position'] = queuePosition;
    if (payment != null)
      json['payment'] = payment;
    if (present != null)
      json['present'] = present;
    return json;
  }

  static List<EventRegistration> listFromJson(List<dynamic> json) {
    return json == null ? List<EventRegistration>() : json.map((value) => EventRegistration.fromJson(value)).toList();
  }

  static Map<String, EventRegistration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EventRegistration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventRegistration.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EventRegistration-objects as value to a dart map
  static Map<String, List<EventRegistration>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EventRegistration>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EventRegistration.listFromJson(value);
       });
     }
     return map;
  }
}

