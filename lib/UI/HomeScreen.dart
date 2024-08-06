import 'package:flutter/material.dart';
import 'Restrauntpage.dart';
import 'Profile.dart';
import 'package:hackathon/UI/OrderDetail.dart';
import 'Cart.dart';
import 'CustomDetail.dart';

void main() => runApp(HomeView());

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'Food Delivery App',
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: Colors.black,
  leading: IconButton(
    icon: Icon(Icons.menu),
    color: Colors.white,
    onPressed: () {},
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.person),
      color: Colors.white,
      onPressed: () {},
    ),
  ],
),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://media.istockphoto.com/id/1672937273/vector/vertical-purple-black-grainy-gradient-background-abstract-dark-mobile-app-banner-design.jpg?s=612x612&w=0&k=20&c=Zb7zqh6KPviMF9tc8hHJgZtxYTyK7H3Iar2YHGeyAFU=',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for food',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 150,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryItem(
                        title: 'Burgers',
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfVwoh9uzu8VMRFwCx1FdkA7QrX60BQEGxlg&s',
                        backgroundColor: const Color.fromARGB(255, 42, 7, 48),
                      ),
                      CategoryItem(
                        title: 'Desserts',
                        imageUrl:
                            'https://cdn.create.vista.com/downloads/4bf54fd3-1898-4eaf-9841-44a181d2bb24_1024.jpeg',
                        backgroundColor: const Color.fromARGB(255, 42, 7, 48),
                      ),
                      CategoryItem(
                        title: 'Mexican',
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxIKFY2CSU3U99rq3e_XI5gjJiANStpeMdAQ&s',
                        backgroundColor: const Color.fromARGB(255, 42, 7, 48),
                      ),
                      CategoryItem(
                        title: 'Sushi',
                        imageUrl:
                            'https://pics.craiyon.com/2023-06-28/41d389883f85456a96f9095b5037ede4.webp',
                        backgroundColor: const Color.fromARGB(255, 42, 7, 48),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Offers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            OfferCard(
                              title: '30% OFF',
                              description: 'Discover discounts in your favorite local restaurants',
                              imageUrl:
                                  'https://thumbs.dreamstime.com/b/fast-food-banner-copy-space-area-junk-food-fresh-crispy-fried-burger-ready-to-serve-fast-food-banner-copy-space-area-306607399.jpg',
                            ),
                            OfferCard(
                              title: 'Buy 1 Get 1 Free',
                              description: 'Enjoy a free meal when you buy one',
                              imageUrl:
                                  'https://thumbs.dreamstime.com/b/generative-ai-summer-bbq-food-corner-border-hot-dog-hamburger-buffet-top-down-view-over-dark-slate-bann-banner-315067890.jpg',
                            ),
                            OfferCard(
                              title: 'Free Delivery',
                              description: 'Get free delivery on orders above 50',
                              imageUrl:
                                  'https://thumbs.dreamstime.com/b/junk-food-side-border-over-dark-background-assorted-take-out-fast-foods-pizza-hamburgers-french-fries-chips-hot-dogs-sweets-243199006.jpg',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fastest Near You',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            RestaurantCard(
                              imageUrl:
                                  'https://img.pikbest.com/wp/202413/stylish-cool-food-burger-restaurant-web-banner_6022760.jpg!bw700',
                              title: 'The Burger Joint',
                              rating: 4.5,
                              deliveryTime: '30-45 mins',
                            ),
                            SizedBox(height: 16),
                            RestaurantCard(
                              imageUrl:
                                  'https://marketplace.canva.com/EAFKIvQG0XE/1/0/1600w/canva-black-and-white-special-promotion-burger-banner-landscape-vukvt1-e2TA.jpg',
                              title: 'Sweet Surrender',
                              rating: 4.2,
                              deliveryTime: '40-55 mins',
                            ),
                            SizedBox(height: 16),
                            RestaurantCard(
                              imageUrl:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA-0L49EEuPE3MAV8kz917gaN72l_FMl48esRLhJ-N-W9pc4ow_7gj3rsdOYYc32WcN1Q&usqp=CAU',
                              title: 'Taco Time',
                              rating: 4.8,
                              deliveryTime: '25-35 mins',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
bottomNavigationBar: BottomNavigationBar(
  onTap: (index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderDetailsScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage(cartItems: [])),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
    }
  },
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search, color: Colors.black),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart, color: Colors.black),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu, color: Colors.black),
      label: 'Menu',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.black),
      label: 'Profile',
    ),
  ],
),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color backgroundColor;

  const CategoryItem({
    required this.title,
    required this.imageUrl,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backgroundColor,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const OfferCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Order Now'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

