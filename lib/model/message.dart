part of openapi.api;

class Message {
  
  int pk = null;
  
  String title = null;
  
  String body = null;
  
  String url = null;
  
  String category = null;
  
  DateTime sent = null;
  Message();

  @override
  String toString() {
    return 'Message[pk=$pk, title=$title, body=$body, url=$url, category=$category, sent=$sent, ]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    title = json['title'];
    body = json['body'];
    url = json['url'];
    category = json['category'];
    sent = (json['sent'] == null) ?
      null :
      DateTime.parse(json['sent']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (title != null)
      json['title'] = title;
    if (body != null)
      json['body'] = body;
      json['url'] = url;
    if (category != null)
      json['category'] = category;
      json['sent'] = sent == null ? null : sent.toUtc().toIso8601String();
    return json;
  }

  static List<Message> listFromJson(List<dynamic> json) {
    return json == null ? List<Message>() : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Message>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Message.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Message-objects as value to a dart map
  static Map<String, List<Message>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Message>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Message.listFromJson(value);
       });
     }
     return map;
  }
}

