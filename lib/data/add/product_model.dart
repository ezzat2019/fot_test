/// name : "shop"
/// rates : {"id4":9.9,"id1":5.3,"id2":3.5}
/// price : 45.2
/// img_url : "https://www.linde-mh.com/media/Global-Content/01-Products/07_Order-Pickers_Kommissionierer/Order_picker-stacking-warehouse_16x9w1920.jpg"

class ProductModel {
  ProductModel({
      String name, 

      double price, 
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

  double _price;
  String _imgUrl;

  String get name => _name;

  double get price => _price;
  String get imgUrl => _imgUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['price'] = _price;
    map['img_url'] = _imgUrl;
    return map;
  }

}
