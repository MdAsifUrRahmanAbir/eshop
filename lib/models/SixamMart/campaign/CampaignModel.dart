import 'CategoryIds.dart';

class CampaignModel {
  CampaignModel({
      this.id, 
      this.image, 
      this.description, 
      this.status, 
      this.adminId, 
      this.categoryId, 
      this.categoryIds, 
      this.variations, 
      this.addOns, 
      this.attributes, 
      this.choiceOptions, 
      this.price, 
      this.tax, 
      this.taxType, 
      this.discount, 
      this.discountType, 
      this.storeId, 
      this.createdAt, 
      this.updatedAt, 
      this.veg, 
      this.moduleId, 
      this.stock, 
      this.unitId, 
      this.name, 
      this.availableTimeStarts, 
      this.availableTimeEnds, 
      this.availableDateStarts, 
      this.availableDateEnds, 
      this.storeName, 
      this.storeDiscount, 
      this.scheduleOrder, 
      this.ratingCount, 
      this.avgRating,});

  CampaignModel.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    description = json['description'];
    status = json['status'];
    adminId = json['admin_id'];
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
    storeId = json['store_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    veg = json['veg'];
    moduleId = json['module_id'];
    stock = json['stock'];
    unitId = json['unit_id'];
    name = json['name'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    availableDateStarts = json['available_date_starts'];
    availableDateEnds = json['available_date_ends'];
    storeName = json['store_name'];
    storeDiscount = json['store_discount'];
    scheduleOrder = json['schedule_order'];
    ratingCount = json['rating_count'];
    avgRating = json['avg_rating'];
  }
  int? id;
  String? image;
  String? description;
  int? status;
  int? adminId;
  int? categoryId;
  List<CategoryIds>? categoryIds;
  List<dynamic>? variations;
  List<dynamic>? addOns;
  List<dynamic>? attributes;
  List<dynamic>? choiceOptions;
  double? price;
  int? tax;
  String? taxType;
  int? discount;
  String? discountType;
  int? storeId;
  String? createdAt;
  String? updatedAt;
  int? veg;
  int? moduleId;
  int? stock;
  dynamic unitId;
  String? name;
  String? availableTimeStarts;
  String? availableTimeEnds;
  String? availableDateStarts;
  String? availableDateEnds;
  String? storeName;
  int? storeDiscount;
  bool? scheduleOrder;
  int? ratingCount;
  int? avgRating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['description'] = description;
    map['status'] = status;
    map['admin_id'] = adminId;
    map['category_id'] = categoryId;
    if (categoryIds != null) {
      map['category_ids'] = categoryIds?.map((v) => v.toJson()).toList();
    }
    if (variations != null) {
      map['variations'] = variations?.map((v) => v.toJson()).toList();
    }
    if (addOns != null) {
      map['add_ons'] = addOns?.map((v) => v.toJson()).toList();
    }
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    if (choiceOptions != null) {
      map['choice_options'] = choiceOptions?.map((v) => v.toJson()).toList();
    }
    map['price'] = price;
    map['tax'] = tax;
    map['tax_type'] = taxType;
    map['discount'] = discount;
    map['discount_type'] = discountType;
    map['store_id'] = storeId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['veg'] = veg;
    map['module_id'] = moduleId;
    map['stock'] = stock;
    map['unit_id'] = unitId;
    map['name'] = name;
    map['available_time_starts'] = availableTimeStarts;
    map['available_time_ends'] = availableTimeEnds;
    map['available_date_starts'] = availableDateStarts;
    map['available_date_ends'] = availableDateEnds;
    map['store_name'] = storeName;
    map['store_discount'] = storeDiscount;
    map['schedule_order'] = scheduleOrder;
    map['rating_count'] = ratingCount;
    map['avg_rating'] = avgRating;
    return map;
  }

}