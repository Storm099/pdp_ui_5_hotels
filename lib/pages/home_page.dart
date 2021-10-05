import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ic_header.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.6),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Best Hotels Ever",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "Search for hotels...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Business Hotels",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        _widgetItem(img: "assets/images/ic_hotel1.jpg",title: "Hotel 1"),
                        _widgetItem(img: "assets/images/ic_hotel2.jpg",title: "Hotel 2"),
                        _widgetItem(img: "assets/images/ic_hotel3.jpg",title: "Hotel 3"),
                        _widgetItem(img: "assets/images/ic_hotel4.jpg",title: "Hotel 4"),
                        _widgetItem(img: "assets/images/ic_hotel5.jpg",title: "Hotel 5"),
                      ],
                    ),
                  )
                ],
              )
            ),
            const SizedBox(height: 20,),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Airport Hotels",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          _widgetItem(img: "assets/images/ic_hotel3.jpg",title: "Hotel 1"),
                          _widgetItem(img: "assets/images/ic_hotel1.jpg",title: "Hotel 2"),
                          _widgetItem(img: "assets/images/ic_hotel2.jpg",title: "Hotel 3"),
                          _widgetItem(img: "assets/images/ic_hotel4.jpg",title: "Hotel 4"),
                          _widgetItem(img: "assets/images/ic_hotel5.jpg",title: "Hotel 5"),
                        ],
                      ),
                    )
                  ],
                )
            ),
            const SizedBox(height: 20,),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Resort Hotels",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,

                        children: [
                          _widgetItem(img: "assets/images/ic_hotel5.jpg",title: "Hotel 1"),
                          _widgetItem(img: "assets/images/ic_hotel2.jpg",title: "Hotel 2"),
                          _widgetItem(img: "assets/images/ic_hotel3.jpg",title: "Hotel 3"),
                          _widgetItem(img: "assets/images/ic_hotel4.jpg",title: "Hotel 4"),
                          _widgetItem(img: "assets/images/ic_hotel1.jpg",title: "Hotel 5"),
                        ],
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetItem({img,title}){
    return AspectRatio(
      aspectRatio: 0.9/1,
      child: Container(
          margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: const EdgeInsets.only(bottom: 20,left: 15,right: 15),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.5),

              ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,style: const TextStyle(color: Colors.white,fontSize: 22),),
              const Icon(Icons.favorite,color: Colors.red,),
            ],
          ),
        )
      ),
    );
  }

}
