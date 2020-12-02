part of openapi.api;

class Partner {
  
  int pk = null;
  
  String name = null;
  
  String link = null;
  
  String companyProfile = null;
  
  String address = null;
  
  String zipCode = null;
  
  String city = null;
  
  MultipartFile logo = null;
  Partner();

  @override
  String toString() {
    return 'Partner[pk=$pk, name=$name, link=$link, companyProfile=$companyProfile, address=$address, zipCode=$zipCode, city=$city, logo=$logo, ]';
  }

  Partner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    name = json['name'];
    link = json['link'];
    companyProfile = json['company_profile'];
    address = json['address'];
    zipCode = json['zip_code'];
    city = json['city'];
    logo = (json['logo'] == null) ?
      null :
    MultipartFile.fromString('logo', json['logo']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (name != null)
      json['name'] = name;
    if (link != null)
      json['link'] = link;
    if (companyProfile != null)
      json['company_profile'] = companyProfile;
    if (address != null)
      json['address'] = address;
    if (zipCode != null)
      json['zip_code'] = zipCode;
    if (city != null)
      json['city'] = city;
    if (logo != null)
      json['logo'] = logo;
    return json;
  }

  static List<Partner> listFromJson(List<dynamic> json) {
    return json == null ? List<Partner>() : json.map((value) => Partner.fromJson(value)).toList();
  }

  static Map<String, Partner> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Partner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Partner.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Partner-objects as value to a dart map
  static Map<String, List<Partner>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Partner>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Partner.listFromJson(value);
       });
     }
     return map;
  }
}

