import 'package:flutter/material.dart';
import 'Profile.dart';
import 'OrderDetail.dart';
import 'Cart.dart';
import 'HomeScreen.dart';
import 'LoginSreen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            _getProfileHead(
                'https://thumbs.dreamstime.com/b/businessman-avatar-image-beard-hairstyle-male-profile-vector-illustration-178545831.jpg'),
            SizedBox(height: 25),
            _getProfileCard(),
            SizedBox(height: 15),
            _getProfileCard2(),
            SizedBox(height: 15),
            _getLogout(context),
            SizedBox(height: 15),
          ],
        ),
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
                MaterialPageRoute(builder: (context) => CartPage(cartItems: [])), 
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderDetailsScreen()),
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

  Widget _getProfileHead(String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'M.Summamah Siddiqui',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text("m.summamah123@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getProfileCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Details'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('My Favorites'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Shipping Address'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('My Card'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getProfileCard2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.info),
              title: Text('FAQs'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Payment Method'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help and Support'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getLogout(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 25.0),
          side: BorderSide(color: Colors.black, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginview()),
          );
        },
        child: Text(
          'Logout',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}









