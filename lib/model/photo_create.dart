part of openapi.api;

class PhotoCreate {
  
  int pk = null;
  /* This does not modify the original image file. */
  int rotation = null;
  //enum rotationEnum {  0,  90,  180,  270,  };{
  
  bool hidden = null;
  
  int album = null;
  
  MultipartFile file = null;
  PhotoCreate();

  @override
  String toString() {
    return 'PhotoCreate[pk=$pk, rotation=$rotation, hidden=$hidden, album=$album, file=$file, ]';
  }

  PhotoCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    rotation = json['rotation'];
    hidden = json['hidden'];
    album = json['album'];
    file = (json['file'] == null) ?
      null :
    MultipartFile.fromString('file', json['file']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (rotation != null)
      json['rotation'] = rotation;
    if (hidden != null)
      json['hidden'] = hidden;
    if (album != null)
      json['album'] = album;
    if (file != null)
      json['file'] = file;
    return json;
  }

  static List<PhotoCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<PhotoCreate>() : json.map((value) => PhotoCreate.fromJson(value)).toList();
  }

  static Map<String, PhotoCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PhotoCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PhotoCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PhotoCreate-objects as value to a dart map
  static Map<String, List<PhotoCreate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PhotoCreate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PhotoCreate.listFromJson(value);
       });
     }
     return map;
  }
}

