import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/fonts.dart';
import 'package:travel_app/widgets/CustomAppBar.dart';
import 'package:travel_app/widgets/CustomButton.dart';

class Booktrip extends StatefulWidget {
  Booktrip({super.key, required this.index});

  var index;

  @override
  State<Booktrip> createState() => _BooktripState();
}

class _BooktripState extends State<Booktrip> {
  var devheight;

  var devwidth;
  bool _enable = true;
  bool _enablesecond = false;
  bool _termvalue = false;

  @override
  Widget build(BuildContext context) {
    devheight = MediaQuery.of(context).size.height;
    devwidth = MediaQuery.of(context).size.width;
    return ScaffoldMessenger(
      child: Scaffold(
        backgroundColor: primarycolor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomAppbar(devheight: devheight),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: devwidth * 0.45,
                        height: devheight * 0.28,
                        child: Text(
                          'Summary of\nyour tip to\n${locations[widget.index].title}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: devheight * 0.28,
                        width: devwidth * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    locations[widget.index].imageUrl))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Do you want to purchase in-flight meals?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: devheight * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 330),
                        child: FlutterSwitch(
                          height: 20.0,
                          width: 40.0,
                          padding: 4.0,
                          toggleSize: 15.0,
                          borderRadius: 10.0,
                          activeColor: secondaryColor,
                          value: _enable,
                          onToggle: (value) {
                            setState(() {
                              _enable = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: devheight * 0.04,
                      ),
                      const Text(
                        "Do you have allergies?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: devheight * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 330),
                        child: FlutterSwitch(
                          height: 20.0,
                          width: 40.0,
                          padding: 4.0,
                          toggleSize: 15.0,
                          borderRadius: 10.0,
                          activeColor: secondaryColor,
                          value: _enablesecond,
                          onToggle: (value) {
                            setState(() {
                              _enablesecond = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: devheight * 0.02,
                      ),
                      const Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.white),
                            fillColor: MaterialStatePropertyAll(Colors.black),
                            value: _termvalue,
                            onChanged: (value) {
                              setState(() {
                                _termvalue = value!;
                              });
                            },
                          ),
                          const Expanded(
                            child: Text(
                              "By clicking this button you're accepting our terms and ocnditions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: devheight * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Your booking has been confirmed!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          );
                        },
                        child: CustomButtonWidget(
                          DevWidth: devwidth,
                          DevHeight: devheight,
                          text: 'Confirm Booking',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
