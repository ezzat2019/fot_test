/// name : ""
/// price : 10.2
/// img_url : ""

class ProductModel {
  ProductModel({
      String name, 
      dynamic price,
      String imgUrl,}){
    _name = name;
    _price = price;
    _imgUrl = imgUrl;
}

  ProductModel.fromJson(dynamic json) {
    _name = json['name'];
    _price = json['price'];
    _imgUrl = json['img_url'];
  }
  String _name;
  dynamic _price;
  String _imgUrl;

  String get name => _name;
  dynamic get price => _price;
  String get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['price'] = _price;
    map['img_url'] = _imgUrl;
    return map;
  }

}