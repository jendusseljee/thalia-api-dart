part of openapi.api;

class Device {
  
  int pk = null;
  
  String registrationId = null;
  /* Inactive devices will not be sent notifications */
  bool active = true;
  
  DateTime dateCreated = null;
  
  String type = null;
  //enum typeEnum {  ios,  android,  };{
  
  List<String> receiveCategory = [];
  Device();

  @override
  String toString() {
    return 'Device[pk=$pk, registrationId=$registrationId, active=$active, dateCreated=$dateCreated, type=$type, receiveCategory=$receiveCategory, ]';
  }

  Device.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    registrationId = json['registration_id'];
    active = json['active'];
    dateCreated = (json['date_created'] == null) ?
      null :
      DateTime.parse(json['date_created']);
    type = json['type'];
    receiveCategory = (json['receive_category'] == null) ?
      null :
      (json['receive_category'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (registrationId != null)
      json['registration_id'] = registrationId;
    if (active != null)
      json['active'] = active;
    if (dateCreated != null)
      json['date_created'] = dateCreated == null ? null : dateCreated.toUtc().toIso8601String();
    if (type != null)
      json['type'] = type;
    if (receiveCategory != null)
      json['receive_category'] = receiveCategory;
    return json;
  }

  static List<Device> listFromJson(List<dynamic> json) {
    return json == null ? List<Device>() : json.map((value) => Device.fromJson(value)).toList();
  }

  static Map<String, Device> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Device>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Device.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Device-objects as value to a dart map
  static Map<String, List<Device>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Device>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Device.listFromJson(value);
       });
     }
     return map;
  }
}

