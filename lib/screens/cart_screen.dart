import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(0xffD60665),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: false,
        elevation: 10,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Cart',
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
              //textAlign: TextAlign.start,
            ),
            Text(
              'Subway-Johar Town',
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 6),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            margin: EdgeInsets.only(
                right: size.width * 0.1, left: size.width * 0.1),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 1),
                right: BorderSide(color: Colors.black, width: 1),
              ),
              //borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: size.height * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Character.png'),
                Column(
                  children: [
                    Text(
                      'Extimated Delivery',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                    Text(
                      'Now (25 min)',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.1,
                right: size.width * 0.2,
                top: size.height * 0.01),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.1,
                          height: size.height * 0.05,
                          decoration: const BoxDecoration(
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Exclusive Subway Deal 1',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: const Color(0xffD60665),
                              ),
                            ),
                            Text(
                              'Chicken Teriyaki,,Mirinda..',
                              style: GoogleFonts.poppins(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      'Rs.560.00',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rs.560.00',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
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
                        Text(
                          'Discount',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: size.width * 0.15,
                          height: size.height * 0.02,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF0D4DD),
                          ),
                          child: Text(
                            '-Rs.560.00',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffD60665),
                            ),
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
                        Text(
                          'Delivery Fee',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                        Text(
                          'Rs.560.00',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'VAT',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                        Text(
                          'Rs.560.00',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/favorite.png'),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text(
                          'Apply a voucher',
                          style: GoogleFonts.poppins(
                              color: const Color(0xffD60665),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: size.width * 0.05, right: size.width * 0.05),
          width: size.width,
          height: size.height * 0.09,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rs 482.00',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  width: size.width * 0.8,
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xffD60665,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Place Order',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
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
