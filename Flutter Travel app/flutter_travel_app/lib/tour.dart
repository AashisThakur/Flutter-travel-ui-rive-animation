import 'package:flutter/material.dart';

class Tour extends StatelessWidget {
  const Tour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 66, 66, 66),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/greece.jpg'),
                        fit: BoxFit.fill),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Positioned(
                right: 30,
                top: MediaQuery.of(context).size.height * 0.38,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 61, 61, 61),
                        blurRadius: 10.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 50,
                  child: const Icon(Icons.heart_broken_rounded),
                ),
              ),
              Positioned(
                left: 30,
                top: MediaQuery.of(context).size.height * 0.42,
                child: const Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text(
                      ' 5-7 days',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.bubble_chart_outlined),
                    Text(
                      ' 20 Km',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Glacier Hiking, IceLand",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style:
                            TextStyle(color: Color.fromARGB(255, 84, 83, 83)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Travel's Gallery",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/StatusOfunity.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/houseboat.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('assets/images/bhuj.jpg'),
                                    fit: BoxFit.fill),
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
        ],
      ),
    );
  }
}
