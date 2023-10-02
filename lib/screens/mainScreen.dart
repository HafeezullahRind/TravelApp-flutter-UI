import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/screens/tripDetails.dart';

import '../fonts.dart';
import '../widgets/CustomAppBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  var devheight;
  var devwidth;
  Widget build(BuildContext context) {
    devheight = MediaQuery.of(context).size.height;
    devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(devheight: devheight),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: devheight * 0.04,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: devheight * 0.04,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        hintText: 'Search for a destination',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: devheight * 0.02,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return tripDetails(index: index);
                              },
                            ));
                          },
                          child: Container(
                            height: devheight * 0.3,
                            width: devwidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(locations[index].imageUrl),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: devheight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              locations[index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: devheight * 0.024,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: devheight * 0.009,
                        ),
                        Text(
                          locations[index].description,
                          style: const TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: devheight * 0.02,
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
