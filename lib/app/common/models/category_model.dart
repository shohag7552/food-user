class CategoryModel{
  int? categoryId;
  String? title;
  String? type;
  String? description;
  String? image;
  String? createdAt;

  CategoryModel({this.categoryId, this.title, this.type, this.description, this.image, this.createdAt});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['id'];
    title = json['title'];
    type = json['type'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = categoryId;
    data['title'] = title;
    data['type'] = type;
    data['description'] = description;
    data['image'] = image;
    data['created_at'] = createdAt;
    return data;
  }
}