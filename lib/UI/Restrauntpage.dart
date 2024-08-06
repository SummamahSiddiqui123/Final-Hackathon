import 'package:flutter/material.dart';
import 'CustomDetail.dart';

class RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String deliveryTime;

  const RestaurantCard({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantDetailPage(
              imageUrl: imageUrl,
              title: title,
              rating: rating,
              deliveryTime: deliveryTime,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, size: 16, color: Colors.amber),
                          SizedBox(width: 4),
                          Text(
                            '$rating',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 16),
                          Icon(Icons.delivery_dining, size: 16, color: Colors.white),
                          SizedBox(width: 4),
                          Text(
                            deliveryTime,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantDetailPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String deliveryTime;

  const RestaurantDetailPage({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://media.istockphoto.com/id/1672937273/vector/vertical-purple-black-grainy-gradient-background-abstract-dark-mobile-app-banner-design.jpg?s=612x612&w=0&k=20&c=Zb7zqh6KPviMF9tc8hHJgZtxYTyK7H3Iar2YHGeyAFU=',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Image.network(imageUrl),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, size: 24, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          '$rating',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.delivery_dining, size: 24, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          deliveryTime,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              buildListTile(context, 'Udon Miso\nThick handmade Udon\nNoodles in a rich miso\n16.00', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVVUJLbny54Ql-Jjs6p8x2PqPJCfSXu-8Q7Q&s', 4.5, '30 mins'),
              buildListTile(context, 'Burger Fry\nDelicious burger with fries\nFast food meal\n12.00', 'https://static.vecteezy.com/system/resources/thumbnails/030/033/247/small/burger-fry-souse-banner-free-space-text-mockup-fast-food-top-view-empty-professional-phonography-photo.jpg', 4.0, '45 mins'),
              buildListTile(context, 'Pasta Delight\nCreamy pasta with herbs\nItalian cuisine\n18.00', 'https://static.vecteezy.com/system/resources/thumbnails/022/148/349/small_2x/banner-with-fast-food-copy-space-background-generative-ai-free-photo.jpeg', 4.2, '25 mins'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildListTile(BuildContext context, String title, String imageUrl, double rating, String deliveryTime) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomDetailPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16.0),
          leading: Icon(Icons.restaurant, color: Colors.white),
          title: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

