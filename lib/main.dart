import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
          color: Colors.black,
        ),
        title: const Text('Fine quality', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body:
          SingleChildScrollView(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 250.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 230.0,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - MediaQuery
                                    .of(context)
                                    .size
                                    .width / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: const DecorationImage(
                                        image: AssetImage('assets/images/img4.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Positioned(
                                  left: 15.0,
                                  top: 130.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const <Widget>[
                                      Text('Honey Bread',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Quicksand',
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text('${88}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Quicksand',
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 5.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(Icons.favorite, color: Colors.red),
                                  Text('368',
                                    style: TextStyle(fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ],

                              ),

                            ),

                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(Icons.bubble_chart, color: Colors.grey),
                                  Text('76',
                                    style: TextStyle(fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ],

                              ),

                            ),

                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(Icons.forward, color: Colors.grey),
                                  Text('18',
                                    style: TextStyle(fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ],
                              ),
                            ),
                          )
                        ],

                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: Text(
                    'Commodity',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 15.0),
                GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildFoodCard('Raspberry','Italy','assets/images/img1.jpg',64,22,1),
                    _buildFoodCard('Mousse','China','assets/images/img2.jpg',64,22,1),
                    _buildFoodCard('Raspberry','Italy','assets/images/img1.jpg',64,22,1),
                    _buildFoodCard('Cupcake','Sweden','assets/images/img3.jpg',64,22,1),
                    _buildFoodCard('Cupcake','Italy','assets/images/img4.jpg',64,22,1),
                    _buildFoodCard('Cupcake','Sweden','assets/images/img5.jpg',64,22,1),
                ]
                )
              ],
            ),
          )
    );
  }

  Widget _buildFoodCard(String name, String origin, String cardImage, int likes,
      int commentCount, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven ? const EdgeInsets.only(right: 15.0) : const EdgeInsets
          .only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0
            )
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)
                      ),
                      image: DecorationImage(
                          image: AssetImage(cardImage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.grey
                    ),
                  ),
                ),
                const SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        likes.toString(),
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),

                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        commentCount.toString(),
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber
                ),
                child: const Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
