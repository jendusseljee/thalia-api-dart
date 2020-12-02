part of openapi.api;

class ProfileRetrieve {
  
  String pk = null;
  
  String displayName = null;
  
  String avatar = null;
  /* Text to display on your profile */
  String profileDescription = null;
  
  String birthday = null;
  /* The year this member started studying. */
  int startingYear = null;
  
  String programme = null;
  //enum programmeEnum {  computingscience,  informationscience,  };{
  /* Website to display on your profile page */
  String website = null;
  
  String membershipType = null;
  
  String achievements = null;
  
  String societies = null;
  ProfileRetrieve();

  @override
  String toString() {
    return 'ProfileRetrieve[pk=$pk, displayName=$displayName, avatar=$avatar, profileDescription=$profileDescription, birthday=$birthday, startingYear=$startingYear, programme=$programme, website=$website, membershipType=$membershipType, achievements=$achievements, societies=$societies, ]';
  }

  ProfileRetrieve.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    displayName = json['display_name'];
    avatar = json['avatar'];
    profileDescription = json['profile_description'];
    birthday = json['birthday'];
    startingYear = json['starting_year'];
    programme = json['programme'];
    website = json['website'];
    membershipType = json['membership_type'];
    achievements = json['achievements'];
    societies = json['societies'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (displayName != null)
      json['display_name'] = displayName;
    if (avatar != null)
      json['avatar'] = avatar;
      json['profile_description'] = profileDescription;
    if (birthday != null)
      json['birthday'] = birthday;
      json['starting_year'] = startingYear;
      json['programme'] = programme;
      json['website'] = website;
    if (membershipType != null)
      json['membership_type'] = membershipType;
    if (achievements != null)
      json['achievements'] = achievements;
    if (societies != null)
      json['societies'] = societies;
    return json;
  }

  static List<ProfileRetrieve> listFromJson(List<dynamic> json) {
    return json == null ? List<ProfileRetrieve>() : json.map((value) => ProfileRetrieve.fromJson(value)).toList();
  }

  static Map<String, ProfileRetrieve> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProfileRetrieve>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfileRetrieve.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProfileRetrieve-objects as value to a dart map
  static Map<String, List<ProfileRetrieve>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProfileRetrieve>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProfileRetrieve.listFromJson(value);
       });
     }
     return map;
  }
}

