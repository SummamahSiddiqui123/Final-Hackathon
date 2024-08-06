import 'package:flutter/material.dart';

class CustomDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Udon Miso'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://media.istockphoto.com/id/1672937273/vector/vertical-purple-black-grainy-gradient-background-abstract-dark-mobile-app-banner-design.jpg?s=612x612&w=0&k=20&c=Zb7zqh6KPviMF9tc8hHJgZtxYTyK7H3Iar2YHGeyAFU='),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  child: Image.network(
                    'https://png.pngtree.com/background/20230426/original/pngtree-cooked-noodles-in-a-bowl-on-black-table-picture-image_2493584.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Udon Miso',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$16.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Our Udon Miso is a comforting bowl of thick, handmade udon noodles in a rich miso broth, garnished with tofu, spring onions, and vegetables.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove, color: Colors.white),
                          ),
                          Text('1', style: TextStyle(color: Colors.white)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Noodle type',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      ListTile(
                        title: Text('Thin', style: TextStyle(color: Colors.white)),
                        trailing: Radio(
                          value: 'thin',
                          groupValue: 'thin',
                          onChanged: (value) {},
                        ),
                      ),
                      ListTile(
                        title: Text('Thick', style: TextStyle(color: Colors.white)),
                        trailing: Radio(
                          value: 'thick',
                          groupValue: 'thick',
                          onChanged: (value) {},
                        ),
                      ),
                      ListTile(
                        title: Text('Udon', style: TextStyle(color: Colors.white)),
                        trailing: Radio(
                          value: 'udon',
                          groupValue: 'udon',
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 87, 59, 209),
                            padding: EdgeInsets.symmetric(vertical: 25.0),
                            side: BorderSide(color: Colors.white, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add to Bucket",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
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
    );
  }
}
