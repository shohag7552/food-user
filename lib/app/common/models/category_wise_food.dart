class CategoryWiseFood {
  final String category;
  final int id;
  final List<FoodItem> foodItems;

  CategoryWiseFood({
    required this.category,
    required this.id,
    required this.foodItems,
  });

  factory CategoryWiseFood.fromJson(Map<String, dynamic> json) {
    var list = json['foodItems'] as List;
    List<FoodItem> foodItemList = list.map((i) => FoodItem.fromJson(i)).toList();

    return CategoryWiseFood(
      category: json['category'],
      id: json['id'],
      foodItems: foodItemList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'id': id,
      'foodItems': foodItems.map((item) => item.toJson()).toList(),
    };
  }
}

class FoodItem {
  final int id;
  final String name;
  final double price;
  final String description;
  final String image;

  FoodItem({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'image': image,
    };
  }
}