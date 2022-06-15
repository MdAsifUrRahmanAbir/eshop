import 'Result.dart';

class FoodModel {
  FoodModel({
      this.totalRestaurants, 
      this.result,});

  FoodModel.fromJson(dynamic json) {
    totalRestaurants = json['Total Restaurants'];
    if (json['Result'] != null) {
      result = [];
      json['Result'].forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
  }
  int? totalRestaurants;
  List<Result>? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Total Restaurants'] = totalRestaurants;
    if (result != null) {
      map['Result'] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}