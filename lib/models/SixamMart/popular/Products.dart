import 'CategoryIds.dart';
import 'Unit.dart';

class Products {
  Products({
      this.id, 
      this.name, 
      this.description, 
      this.image, 
      this.categoryId, 
      this.categoryIds, 
      // this.variations,
      // this.addOns,
      // this.attributes,
      // this.choiceOptions,
      this.price, 
      this.tax, 
      this.taxType, 
      this.discount, 
      this.discountType, 
      this.availableTimeStarts, 
      this.availableTimeEnds, 
      this.veg, 
      this.status, 
      this.storeId, 
      this.createdAt, 
      this.updatedAt, 
      this.orderCount, 
      this.avgRating, 
      this.ratingCount, 
      this.moduleId, 
      this.stock, 
      this.unitId, 
      this.images, 
      this.storeName, 
      this.storeDiscount, 
      this.scheduleOrder, 
      this.unitType, 
      this.unit,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    categoryId = json['category_id'];
    if (json['category_ids'] != null) {
      categoryIds = [];
      json['category_ids'].forEach((v) {
        categoryIds?.add(CategoryIds.fromJson(v));
      });
    }
    // if (json['variations'] != null) {
    //   variations = [];
    //   json['variations'].forEach((v) {
    //     variations?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['add_ons'] != null) {
    //   addOns = [];
    //   json['add_ons'].forEach((v) {
    //     addOns?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['attributes'] != null) {
    //   attributes = [];
    //   json['attributes'].forEach((v) {
    //     attributes?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['choice_options'] != null) {
    //   choiceOptions = [];
    //   json['choice_options'].forEach((v) {
    //     choiceOptions?.add(Dynamic.fromJson(v));
    //   });
    // }
    price = json['price'];
    tax = json['tax'];
    taxType = json['tax_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    veg = json['veg'];
    status = json['status'];
    storeId = json['store_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    orderCount = json['order_count'];
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count'];
    moduleId = json['module_id'];
    stock = json['stock'];
    unitId = json['unit_id'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    storeName = json['store_name'];
    storeDiscount = json['store_discount'];
    scheduleOrder = json['schedule_order'];
    unitType = json['unit_type'];
    unit = json['unit'] != null ? Unit.fromJson(json['unit']) : null;
  }
  dynamic id;
  String? name;
  String? description;
  String? image;
  dynamic categoryId;
  List<CategoryIds>? categoryIds;
  // List<dynamic>? variations;
  // List<dynamic>? addOns;
  // List<dynamic>? attributes;
  // List<dynamic>? choiceOptions;
  dynamic price;
  dynamic tax;
  String? taxType;
  dynamic discount;
  String? discountType;
  String? availableTimeStarts;
  String? availableTimeEnds;
  dynamic veg;
  dynamic status;
  dynamic storeId;
  String? createdAt;
  String? updatedAt;
  dynamic orderCount;
  dynamic avgRating;
  dynamic ratingCount;
  dynamic moduleId;
  dynamic stock;
  dynamic unitId;
  List<String>? images;
  String? storeName;
  dynamic storeDiscount;
  bool? scheduleOrder;
  String? unitType;
  Unit? unit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['image'] = image;
    map['category_id'] = categoryId;
    if (categoryIds != null) {
      map['category_ids'] = categoryIds?.map((v) => v.toJson()).toList();
    }
    // if (variations != null) {
    //   map['variations'] = variations?.map((v) => v.toJson()).toList();
    // }
    // if (addOns != null) {
    //   map['add_ons'] = addOns?.map((v) => v.toJson()).toList();
    // }
    // if (attributes != null) {
    //   map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    // }
    // if (choiceOptions != null) {
    //   map['choice_options'] = choiceOptions?.map((v) => v.toJson()).toList();
    // }
    map['price'] = price;
    map['tax'] = tax;
    map['tax_type'] = taxType;
    map['discount'] = discount;
    map['discount_type'] = discountType;
    map['available_time_starts'] = availableTimeStarts;
    map['available_time_ends'] = availableTimeEnds;
    map['veg'] = veg;
    map['status'] = status;
    map['store_id'] = storeId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['order_count'] = orderCount;
    map['avg_rating'] = avgRating;
    map['rating_count'] = ratingCount;
    map['module_id'] = moduleId;
    map['stock'] = stock;
    map['unit_id'] = unitId;
    map['images'] = images;
    map['store_name'] = storeName;
    map['store_discount'] = storeDiscount;
    map['schedule_order'] = scheduleOrder;
    map['unit_type'] = unitType;
    if (unit != null) {
      map['unit'] = unit?.toJson();
    }
    return map;
  }

}