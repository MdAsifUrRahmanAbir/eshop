import 'Products.dart';

class PopularModel {
  PopularModel({
      this.totalSize, 
       this.limit,
       this.offset,
      this.products,});

  PopularModel.fromJson(dynamic json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }
  int? totalSize;
   dynamic limit;
   dynamic offset;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_size'] = totalSize;
    map['limit'] = limit;
    map['offset'] = offset;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}