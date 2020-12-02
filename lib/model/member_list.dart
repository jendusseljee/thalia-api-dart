part of openapi.api;

class MemberList {
  
  int pk = null;
  
  String startingYear = null;
  
  String displayName = null;
  
  String membershipType = null;
  
  String avatar = null;
  MemberList();

  @override
  String toString() {
    return 'MemberList[pk=$pk, startingYear=$startingYear, displayName=$displayName, membershipType=$membershipType, avatar=$avatar, ]';
  }

  MemberList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    startingYear = json['starting_year'];
    displayName = json['display_name'];
    membershipType = json['membership_type'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (startingYear != null)
      json['starting_year'] = startingYear;
    if (displayName != null)
      json['display_name'] = displayName;
    if (membershipType != null)
      json['membership_type'] = membershipType;
    if (avatar != null)
      json['avatar'] = avatar;
    return json;
  }

  static List<MemberList> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberList>() : json.map((value) => MemberList.fromJson(value)).toList();
  }

  static Map<String, MemberList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MemberList-objects as value to a dart map
  static Map<String, List<MemberList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MemberList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MemberList.listFromJson(value);
       });
     }
     return map;
  }
}

