part of openapi.api;

class AlbumListCover {
  
  int pk = null;
  /* This does not modify the original image file. */
  int rotation = null;
  //enum rotationEnum {  0,  90,  180,  270,  };{
  
  bool hidden = null;
  
  int album = null;
  
  String file = null;
  AlbumListCover();

  @override
  String toString() {
    return 'AlbumListCover[pk=$pk, rotation=$rotation, hidden=$hidden, album=$album, file=$file, ]';
  }

  AlbumListCover.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    rotation = json['rotation'];
    hidden = json['hidden'];
    album = json['album'];
    file = json['file'];
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

  static List<AlbumListCover> listFromJson(List<dynamic> json) {
    return json == null ? List<AlbumListCover>() : json.map((value) => AlbumListCover.fromJson(value)).toList();
  }

  static Map<String, AlbumListCover> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AlbumListCover>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AlbumListCover.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AlbumListCover-objects as value to a dart map
  static Map<String, List<AlbumListCover>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AlbumListCover>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AlbumListCover.listFromJson(value);
       });
     }
     return map;
  }
}

