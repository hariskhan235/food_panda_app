import 'package:flutter/material.dart';
import 'package:food_panda_app/screens/home_screen.dart';
import 'package:food_panda_app/screens/popular_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffEBDBE2),
                ),
                child: Stack(
                  children: [
                    CustomPaint(
                      painter: CustomShapePainter(),
                      size: Size(MediaQuery.of(context).size.width, 300),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/restaurant_detail.png',
                            fit: BoxFit.cover,
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Positioned(
                            top: 15,
                            left: 25,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              child: const CircleAvatar(
                                backgroundColor: Color(0xffC4C4C4),
                                radius: 20,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xffD60665),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 15,
                            right: 20,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffC4C4C4),
                              radius: 20,
                              child: Icon(
                                Icons.shopping_cart,
                                color: Color(0xffD60665),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 15,
                            right: 80,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffC4C4C4),
                              radius: 20,
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xffD60665),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Material(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 80, bottom: 30),
                          child: Text(
                            'Get Rs.150 off your first order with Everyday favourite by using code: HCNC. T&C apply',
                            maxLines: 3,
                            style: GoogleFonts.poppins(
                              color: const Color(0xffD60665),
                              fontSize: 11,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/images/foodpanda.png'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                //alignment: Alignment.center,
                width: 300,
                height: 40,
                padding: const EdgeInsets.only(top: 10, left: 10),
                decoration: const BoxDecoration(
                  color: Color(0xffD60665),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    'Fast Food Details',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Material(
                child: TabBar(
                  indicatorColor: const Color(0xffD60665),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 5.0,
                  controller: _tabController,
                  splashBorderRadius: BorderRadius.circular(10),
                  tabs: [
                    Tab(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          'Popular',
                          style: GoogleFonts.poppins(
                              //color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Tab(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          'Exclusion Subway Deals ',
                          style: GoogleFonts.poppins(
                              //color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                          //maxLines: 1,
                        ),
                      ),
                    ),
                    Tab(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          'Crazy Deals',
                          style: GoogleFonts.poppins(
                              //color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 5,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
              Expanded(
                child: Material(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(
                        child: Material(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 20, left: 20),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/fire.png'),
                                    Text(
                                      'Popular',
                                      style: GoogleFonts.poppins(
                                          //color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Most ordered right nowta',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PopularScreen(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Exclusive Subway Deal 1',
                                            style: GoogleFonts.poppins(
                                                //color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '6 inch sub & 250 ml drink',
                                            style: GoogleFonts.poppins(
                                              //color: Colors.white,
                                              fontSize: 10,
                                              //fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: const [
                                              Text('Rs. 333.00'),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text('Rs. 333.00'),
                                            ],
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                          'assets/images/subway_deal.png')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  thickness: 2.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Drink & Cookie',
                                          style: GoogleFonts.poppins(
                                              //color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // Text(
                                        //   '6 inch sub & 250 ml drink',
                                        //   style: GoogleFonts.poppins(
                                        //     //color: Colors.white,
                                        //     fontSize: 10,
                                        //     //fontWeight: FontWeight.bold
                                        //   ),
                                        // ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: const [
                                            Text('Rs. 160.0'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('Rs. 253.0'),
                                          ],
                                        )
                                      ],
                                    ),
                                    Image.asset('assets/images/drink.png')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Center(
                        child: Material(
                          color: Colors.black,
                        ),
                      ),
                      const Center(
                        child: Material(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  BuildContext? context;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
