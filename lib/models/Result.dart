class Result {
  Result({
      this.reviews, 
      this.parkinglot, 
      this.location, 
      this.phone, 
      this.averagecost, 
      this.image, 
      this.imageId, 
      this.restauranttype, 
      this.id, 
      this.businessname, 
      this.address, 
      this.menu, 
      this.slug, 
      this.email, 
      this.v, 
      this.foodMenu});

  Result.fromJson(dynamic json) {
    reviews = json['reviews'];
    parkinglot = json['parkinglot'];
    location = json['location'];
    phone = json['phone'];
    averagecost = json['averagecost'];
    image = json['image'];
    imageId = json['imageId'];
    restauranttype = json['restauranttype'];
    id = json['_id'];
    businessname = json['businessname'];
    address = json['address'];
    menu = json['menu'];
    slug = json['slug'];
    email = json['email'];
    v = json['__v'];
    id = json['id'];
  }
  int? reviews;
  bool? parkinglot;
  String? location;
  String? phone;
  int? averagecost;
  String? image;
  String? imageId;
  String? restauranttype;
  String? id;
  String? businessname;
  String? address;
  String? menu;
  String? slug;
  String? email;
  int? v;
  List<dynamic>? foodMenu;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reviews'] = reviews;
    map['parkinglot'] = parkinglot;
    map['location'] = location;
    map['phone'] = phone;
    map['averagecost'] = averagecost;
    map['image'] = image;
    map['imageId'] = imageId;
    map['restauranttype'] = restauranttype;
    map['_id'] = id;
    map['businessname'] = businessname;
    map['address'] = address;
    map['menu'] = menu;
    map['slug'] = slug;
    map['email'] = email;
    map['__v'] = v;
    if (foodMenu != null) {
      map['foodMenu'] = foodMenu?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    return map;
  }

}