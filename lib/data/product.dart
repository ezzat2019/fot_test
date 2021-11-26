class Product{
  String name;
  int age;
  bool isAuth;


  Product(this.name, this.age, this.isAuth);

  Map toJson(){
    Map  map=Map();
    map["name"]=name;
    map["age"]=age;
    map["auth"]=isAuth;
    return map;
  }
}