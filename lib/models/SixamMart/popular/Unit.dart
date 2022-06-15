class Unit {
  Unit({
      this.id, 
      this.unit, 
      this.createdAt, 
      this.updatedAt,});

  Unit.fromJson(dynamic json) {
    id = json['id'];
    unit = json['unit'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? unit;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['unit'] = unit;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}