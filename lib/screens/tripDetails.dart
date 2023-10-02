import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/fonts.dart';
import 'package:travel_app/screens/Booktrip.dart';
import 'package:travel_app/widgets/CustomAppBar.dart';

import '../widgets/CustomButton.dart';

class tripDetails extends StatelessWidget {
  tripDetails({super.key, required this.index});

  var index;

  var DevHeight;
  var DevWidth;

  @override
  Widget build(BuildContext context) {
    DevHeight = MediaQuery.of(context).size.height;
    DevWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomAppbar(devheight: DevHeight),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: DevHeight * 0.6,
              width: DevWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(locations[index].imageUrl))),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        locations[index].title,
                        style: const TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    locations[index].description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Booktrip(index: index,);
                      }));
                    },
                    child: CustomButtonWidget(
                      DevWidth: DevWidth,
                      DevHeight: DevHeight,
                      text: 'Book this trip',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
