class HomeItem {
  late String title, image;
  late int price, id;

  HomeItem(
      {required this.title,
      required this.id,
      required this.price,
      required this.image});
}

List<HomeItem> homeItems = [
  HomeItem(title: 'fish', id: 1, price: 100, image: 'assets/img1.jpg'),
  HomeItem(title: 'fish', id: 2, price: 100, image: 'assets/img1.jpg'),
  HomeItem(title: 'fish', id: 3, price: 100, image: 'assets/img1.jpg'),
  HomeItem(title: 'fish', id: 4, price: 100, image: 'assets/img1.jpg'),
];
