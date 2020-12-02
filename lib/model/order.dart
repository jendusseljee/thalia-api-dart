part of openapi.api;

class Order {
  
  int pk = null;
  
  String payment = null;
  //enum paymentEnum {  cash_payment,  card_payment,  tpay_payment,  wire_payment,  no_payment,  };{
  
  int product = null;
  /* Use this for non-members */
  String name = null;
  
  String member = null;
  Order();

  @override
  String toString() {
    return 'Order[pk=$pk, payment=$payment, product=$product, name=$name, member=$member, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pk = json['pk'];
    payment = json['payment'];
    product = json['product'];
    name = json['name'];
    member = json['member'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pk != null)
      json['pk'] = pk;
    if (payment != null)
      json['payment'] = payment;
    if (product != null)
      json['product'] = product;
    if (name != null)
      json['name'] = name;
    if (member != null)
      json['member'] = member;
    return json;
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? List<Order>() : json.map((value) => Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Order>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Order.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Order>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Order.listFromJson(value);
       });
     }
     return map;
  }
}

