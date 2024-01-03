import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List<Map<String, dynamic>> imageList = [
    {"id": 1, "image_path": 'assets/img_1.png'},
    {"id": 2, "image_path": 'assets/img_1.png'},
    {"id": 3, "image_path": 'assets/img_1.png'},
    {"id": 4, "image_path": 'assets/img_1.png'}
  ];

  String selectedCategory = "All";

  List catList = [
    'All',
    'Clothing',
    'Jacket',
    'Shirts',
    'Sweatshirts',
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                      ),
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 1,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 290,
                      top: 50.0,
                      left: 22,
                      right: 22,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 30.24,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img_2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              width: 95.24,
                              height: 32,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img_3.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 55.0),
                              width: 65.24,
                              height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img_4.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 0,
                      right: 200,
                      child: Column(
                        children: [
                          Text(
                            "Welcome 👋",
                            style:
                                TextStyle(color: Colors.white, fontSize: 32.0),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 22,
                      left: 0,
                      right: 250,
                      child: Column(
                        children: [
                          Text(
                            "Let's explore trends",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 30 : 30,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.white
                                    : Colors.black26,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.0,
                                    ),
                                    child: Text(
                                      'Top products',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 25,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 140,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 140,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage('assets/img_5.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(11, 17),
                                            blurRadius: 27,
                                            color:
                                                Color.fromRGBO(1, 0, 0, 0.04),
                                          ),
                                        ],
                                        color: Color(0xFFE4E6E8),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 8,
                                            top: 8,
                                            child: Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Color(0xFF14181E),
                                              ),
                                              child: Icon(
                                                Icons.favorite,
                                                size: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'CONTRASTING CROPPED VARSITY TOP',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xFF14181E),
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '\$153',
                                              style: TextStyle(
                                                fontFamily: 'Plus Jakarta Sans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 8,
                                                color: Color(0xFFC4C5C9),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '\$126.99',
                                              style: TextStyle(
                                                fontFamily: 'Plus Jakarta Sans',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                color: Color(0xFF614FE0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Add your onPressed logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xFF14181E),
                                            // Set the background color
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.shopping_bag,
                                                size: 16,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                'Add to Cart',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFF14181E), // Rectangle 579 color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 6), // gap: 6px

                    // Ellipse 11
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEBED), // Ellipse 11 color
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6),

                    // Ellipse 12
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEBED), // Ellipse 12 color
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6),

                    // Ellipse 13
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEBED), // Ellipse 13 color
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6),

                    // Ellipse 14
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEBED), // Ellipse 14 color
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/img_6.png',
                          height: 150,
                          width: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 25.0),
                              child: Image.asset(
                                'assets/img_7.png',
                                width: 87.0,
                                height: 59.0,
                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 95.0, left: 25.0),
                              child: Image.asset(
                                'assets/img_8.png',
                                width: 281.0,
                                height: 38.0,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    left: 20.0,
                                  ),
                                  child: Image.asset(
                                    'assets/img_9.png',
                                    height: 23,
                                    width: 134,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                    left: 140.0,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Text("See All"),
                                        Image.asset(
                                          'assets/img_10.png',
                                          height: 16,
                                          width: 16,
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: List.generate(
                        catList.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = catList[index];
                            });
                            // Your onTap logic here
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 18,
                            ),
                            decoration: BoxDecoration(
                              color: catList[index] == selectedCategory
                                  ? Color(0xFFF14181E)
                                  : Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              catList[index],
                              style: TextStyle(
                                color: catList[index] == selectedCategory
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text('data'),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img_5.png'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(11, 17),
                                    blurRadius: 27,
                                    color: Color.fromRGBO(1, 0, 0, 0.04),
                                  ),
                                ],
                                color: Color(0xFFE4E6E8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 8,
                                    top: 8,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFF14181E),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'CONTRASTING CROPPED VARSITY TOP',
                                    style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF14181E),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$153',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: Color(0xFFC4C5C9),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '\$126.99',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Color(0xFF614FE0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF14181E),
                                      // Set the background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.white,
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img_5.png'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(11, 17),
                                    blurRadius: 27,
                                    color: Color.fromRGBO(1, 0, 0, 0.04),
                                  ),
                                ],
                                color: Color(0xFFE4E6E8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 8,
                                    top: 8,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFF14181E),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'CONTRASTING CROPPED VARSITY TOP',
                                    style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF14181E),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$153',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: Color(0xFFC4C5C9),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '\$126.99',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Color(0xFF614FE0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF14181E),
                                      // Set the background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.white,
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img_5.png'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(11, 17),
                                    blurRadius: 27,
                                    color: Color.fromRGBO(1, 0, 0, 0.04),
                                  ),
                                ],
                                color: Color(0xFFE4E6E8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 8,
                                    top: 8,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFF14181E),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'CONTRASTING CROPPED VARSITY TOP',
                                    style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF14181E),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$153',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: Color(0xFFC4C5C9),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '\$126.99',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Color(0xFF614FE0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF14181E),
                                      // Set the background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.white,
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 170,
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img_5.png'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(11, 17),
                                    blurRadius: 27,
                                    color: Color.fromRGBO(1, 0, 0, 0.04),
                                  ),
                                ],
                                color: Color(0xFFE4E6E8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 8,
                                    top: 8,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFF14181E),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'CONTRASTING CROPPED VARSITY TOP',
                                    style: TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF14181E),
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$153',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8,
                                          color: Color(0xFFC4C5C9),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '\$126.99',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: Color(0xFF614FE0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF14181E),
                                      // Set the background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.white,
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
