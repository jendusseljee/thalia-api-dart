part of openapi.api;

class MemberGroup {
  
  int pk = null;
  
  String name = null;
  
  String type = null;
  
  DateTime since = null;
  
  DateTime until = null;
  
  String contactAddress = null;
  
  MultipartFile photo = null;
  
  String chair = null;
  
  String members = null;
  MemberGroup();

  @override
  String toString() {
    return 'MemberGroup[pk=$pk, name=$name, type=$type, since=$since, until=$until, contactAddress=$contactAddress, photo=$photo, chair=$chair, members=$members, ]';
  }

  MemberGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    name = json['name'];
    type = json['type'];
    since = (json['since'] == null) ?
      null :
      DateTime.parse(json['since']);
    until = (json['until'] == null) ?
      null :
      DateTime.parse(json['until']);
    contactAddress = json['contact_address'];
    photo = (json['photo'] == null) ?
      null :
    MultipartFile.fromString('photo', json['photo']);
    chair = json['chair'];
    members = json['members'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
      json['since'] = since == null ? null : since.toUtc().toIso8601String();
      json['until'] = until == null ? null : until.toUtc().toIso8601String();
    if (contactAddress != null)
      json['contact_address'] = contactAddress;
      json['photo'] = photo;
    if (chair != null)
      json['chair'] = chair;
    if (members != null)
      json['members'] = members;
    return json;
  }

  static List<MemberGroup> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberGroup>() : json.map((value) => MemberGroup.fromJson(value)).toList();
  }

  static Map<String, MemberGroup> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberGroup.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MemberGroup-objects as value to a dart map
  static Map<String, List<MemberGroup>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MemberGroup>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MemberGroup.listFromJson(value);
       });
     }
     return map;
  }
}

