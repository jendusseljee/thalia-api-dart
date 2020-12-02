part of openapi.api;

class Pizza {
  
  int pk = null;
  
  String name = null;
  
  String description = null;
  
  String price = null;
  
  bool available = null;
  Pizza();

  @override
  String toString() {
    return 'Pizza[pk=$pk, name=$name, description=$description, price=$price, available=$available, ]';
  }

  Pizza.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    available = json['available'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    if (price != null)
      json['price'] = price;
    if (available != null)
      json['available'] = available;
    return json;
  }

  static List<Pizza> listFromJson(List<dynamic> json) {
    return json == null ? List<Pizza>() : json.map((value) => Pizza.fromJson(value)).toList();
  }

  static Map<String, Pizza> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Pizza>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Pizza.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pizza-objects as value to a dart map
  static Map<String, List<Pizza>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Pizza>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Pizza.listFromJson(value);
       });
     }
     return map;
  }
}

