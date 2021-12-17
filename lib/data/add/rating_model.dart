/// id : 1.2

class RatingModel {
  RatingModel({
      double id,}){
    _id = id;
}

  RatingModel.fromJson(dynamic json) {
    _id = json['id'];
  }
  double _id;

  double get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}