
class Food {
  String name;
  double price;
  bool available;
  String imageUrl;

  Food({
    required this.name,
    required this.price,
    required this.available,
    required this.imageUrl,
  });
}

List<Food> popularFoods = [
  Food(name: 'Rameen', price: 10.99, available: true, imageUrl: 'https://images.unsplash.com/photo-1526318896980-cf78c088247c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFtZW58ZW58MHx8MHx8fDA%3D'),
  Food(name: 'Pizza', price: 9.99, available: true, imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cGl6emF8ZW58MHx8MHx8fDA%3D'),
  Food(name: 'Burger', price: 5.99, available: true, imageUrl: 'https://images.unsplash.com/photo-1508737027454-e6454ef45afd?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YnVyZ2VyfGVufDB8fDB8fHww'),
  Food(name: 'Pasta', price: 7.99, available: false, imageUrl: 'https://plus.unsplash.com/premium_photo-1677000666741-17c3c57139a2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGFzdGF8ZW58MHx8MHx8fDA%3D'),
  Food(name: 'Salad', price: 4.99, available: true, imageUrl: 'https://images.unsplash.com/photo-1570197571499-166b36435e9f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2FsYWR8ZW58MHx8MHx8fDA%3D'),
  Food(name: 'Sushi', price: 12.99, available: false, imageUrl: 'https://media.istockphoto.com/id/2149399662/photo/sushi-roll-covered-with-salmon-served-in-long-plate-on-slate-board.webp?a=1&b=1&s=612x612&w=0&k=20&c=IBvzgG3XXbI2b-yjBWWznKnx9H9Q3dE1wP4pXWDO1Lk='),
];