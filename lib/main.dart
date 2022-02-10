import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: [
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Welcome ,Nadia',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A))),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/model.jpg'),
                          fit: BoxFit.cover))),
            ),
          ]),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Let\'s select the best taste for your \nnext coffee break!',
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7)),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Taste of the week',
                  style: TextStyle(
                    color: Color(0xFF473D3A),
                    fontSize: 17,
                    fontFamily: 'varela',
                    fontWeight: FontWeight.w300,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text('See all',
                    style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 15,
                        color: Color(0xFFC7B0A6))),
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
              height: 410,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _coffeeListCard(
                      'assets/starbucks.png',
                      'Caffe Misto',
                      'CoffeeShop',
                      'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                      '\$4.99',
                      false),
                  _coffeeListCard(
                      'assets/starbucks.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '\$3.99',
                      false)
                ],
              )),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore near by',
                  style: TextStyle(
                    color: Color(0xFF473D3A),
                    fontSize: 17,
                    fontFamily: 'varela',
                    fontWeight: FontWeight.w300,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text('See all',
                    style: TextStyle(
                        fontFamily: 'varela',
                        fontSize: 15,
                        color: Color(0xFFC7B0A6))),
              )
            ],
          ),
          SizedBox(height: 15),
          Container(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('assets/coffee.jpg'),
                  _buildImage('assets/coffee2.jpg'),
                  _buildImage('assets/coffee3.jpg')
                ],
              )),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF473D3A),
        unselectedItemColor: Color(0xFFC7B0A6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
          height: 100,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
          )),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: 335),
                Positioned(
                    top: 35,
                    child: Container(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        height: 260,
                        width: 225,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFDAB68C)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 65.0,
                              ),
                              Text(
                                shopName + '\'s',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                coffeeName,
                                style: TextStyle(
                                    fontFamily: 'varela',
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                description,
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'varela',
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3A4742)),
                                  ),
                                  Container(
                                      height: 40.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white),
                                      child: Center(
                                          child: Icon(Icons.favorite,
                                              color: isFavorite
                                                  ? Colors.red
                                                  : Colors.grey,
                                              size: 15.0)))
                                ],
                              )
                            ]))),
                Positioned(
                    left: 60.0,
                    top: 0.0,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)))),
              ],
            ),
            Container(
                height: 50.0,
                width: 225,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF473D3A)),
                child: Center(
                  child: Text('Order now',
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                )),
          ],
        ),
      ),
    );
  }
}
