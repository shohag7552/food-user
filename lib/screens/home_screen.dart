import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.pink.shade100,
        elevation: 0,
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search Purri',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Icon(Icons.shopping_cart, color: Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Current Location',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const Text(
              'Texas, USA',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.pink.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CategoryIcon(label: 'Sweets', icon: Icons.cake),
                  CategoryIcon(label: 'Health', icon: Icons.favorite),
                  CategoryIcon(label: 'Drink', icon: Icons.local_drink),
                  CategoryIcon(label: 'Frozen', icon: Icons.ac_unit),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Get Your',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        '15% Cashback',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'Make it to October 20',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward, size: 30),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'You might need',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                    name: 'Beetroot',
                    price: '\$4.00',
                    weight: '500g',
                    imagePath: Icons.eco,
                  ),
                  ProductCard(
                    name: 'Beef',
                    price: '\$9.20',
                    weight: '900g',
                    imagePath: Icons.food_bank,
                  ),
                  ProductCard(
                    name: 'Avocado',
                    price: '\$8.30',
                    weight: '350g',
                    imagePath: Icons.nature,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryIcon({
    required this.label,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String weight;
  final IconData imagePath;

  const ProductCard({
    required this.name,
    required this.price,
    required this.weight,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(imagePath, size: 50),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            weight,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            price,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: const CircleBorder(),
            ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
