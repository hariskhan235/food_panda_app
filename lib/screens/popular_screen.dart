import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.06),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/exclusive_subway_deal.png'),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: size.height * 0.02,
                    left: size.width * 0.05,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.02,
                  left: size.width * 0.05,
                  right: size.height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exclusive Subway Deal 1',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '6 inch sub & 250 ml drink',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Rs.333.00',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.002,
                  ),
                  const Divider(
                    thickness: 2.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Your Flavor',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Select',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.002),
                        width: size.width * 0.2,
                        height: size.height * 0.02,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffB7D6F4)),
                        child: Text(
                          '1 Required',
                          style: GoogleFonts.poppins(
                              fontSize: 11, color: Colors.black
                              //fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              toggleable: true,
                              activeColor: const Color(0xffD60665),
                              overlayColor: MaterialStateProperty.all(
                                  const Color(0xffD60665)),
                              value: 0,
                              groupValue: '0',
                              onChanged: (value) {
                                setState(() {
                                  value = 0;
                                  //value = true;
                                });
                              }),
                          const Text('Chicken Tikka'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 1,
                              groupValue: '1',
                              onChanged: (value) {
                                setState(() {
                                  value = 1;
                                });
                              }),
                          const Text('Chicken Teriyaki'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 2,
                              groupValue: '2',
                              onChanged: (value) {
                                setState(() {
                                  value = 2;
                                });
                              }),
                          const Text('Chicken Fajita'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 3,
                              groupValue: '3',
                              onChanged: (value) {
                                setState(() {
                                  value = 3;
                                });
                              }),
                          const Text('BBQ'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose Your Soft Drink',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Select',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.002),
                        width: size.width * 0.2,
                        height: size.height * 0.02,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffB7D6F4)),
                        child: Text(
                          '1 Required',
                          style: GoogleFonts.poppins(
                              fontSize: 11, color: Colors.black
                              //fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              toggleable: true,
                              activeColor: const Color(0xffD60665),
                              overlayColor: MaterialStateProperty.all(
                                  const Color(0xffD60665)),
                              value: 0,
                              groupValue: '0',
                              onChanged: (value) {
                                setState(() {
                                  value = 0;
                                  //value = true;
                                });
                              }),
                          const Text('Pepsi'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 1,
                              groupValue: '1',
                              onChanged: (value) {
                                setState(() {
                                  value = 1;
                                });
                              }),
                          const Text('7up'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 2,
                              groupValue: '2',
                              onChanged: (value) {
                                setState(() {
                                  value = 2;
                                });
                              }),
                          const Text('Mirinda'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(
                              fillColor: MaterialStateProperty.all(
                                const Color(0xffD60665),
                              ),
                              activeColor: const Color(0xffD60665),
                              value: 3,
                              groupValue: '3',
                              onChanged: (value) {
                                setState(() {
                                  value = 3;
                                });
                              }),
                          const Text('Mountain drew'),
                        ],
                      ),
                      const Text('Rs.0.00')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Material(
          elevation: 10,
          child: Container(
            padding: EdgeInsets.only(
                left: size.width * 0.05, right: size.width * 0.05),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            height: size.height * 0.05,
            width: size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffDADADA),
                      radius: size.height * 0.02,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    const Text('1'),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xffD60665),
                      radius: size.height * 0.02,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffD60665),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Add To Cart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
