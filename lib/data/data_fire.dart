/// name : ""
/// age : 25
/// auth : "fasle"

class DataFire {
  DataFire({
      String name, 
      int age, 
      String auth,}){
    _name = name;
    _age = age;
    _auth = auth;
}

  DataFire.fromJson(dynamic json) {
    _name = json['name'];
    _age = json['age'];
    _auth = json['auth'];
  }
  String _name;
  int _age;
  String _auth;

  String get name => _name;
  int get age => _age;
  String get auth => _auth;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['age'] = _age;
    map['auth'] = _auth;
    return map;
  }

}