class Item {
  late int id;

  late String description;
  late String image;
  late String title;
  late String category;

  Item({
    required this.category,
    required this.description,
    required this.title,
    required this.image,
    required this.id,
  });

  Item.fromJson(Map<String, dynamic> json)
      : description = '${json['description']}',
        image = '${json['image']}',
        id = json['id'],
        // price = json['price'],
        category = '${json['category']}',
        title = '${json['title']}';

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'description': description,
      'title': title,
      'image': image,
      'category': category,
    };
  }
}
