import 'package:flutter/material.dart';
import 'package:flutter_travel_app/tour.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu_rounded,
                  size: 40,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/user.png"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hello,',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 93, 65),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'What are you lookin for?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 47, 47, 47),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 154, 126),
                      ),
                      child: const Icon(Icons.home),
                    ),
                    const Text(
                      'Accomodation',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 154, 126),
                      ),
                      child: const Icon(Icons.hotel),
                    ),
                    const Text(
                      'Expierience',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 154, 126),
                      ),
                      child: const Icon(Icons.paragliding_rounded),
                    ),
                    const Text(
                      'Adventure',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 154, 126),
                      ),
                      child: const Icon(Icons.flight),
                    ),
                    const Text(
                      'Flight',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Experiences',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tour()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 30),
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/greece.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/bhuj.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/houseboat.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/StatusOfunity.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "When're you planning to go :) ?  ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 60, 60),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "FROM",
                  style: TextStyle(
                      color: Color.fromARGB(255, 72, 72, 72),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "To",
                  style: TextStyle(
                      color: Color.fromARGB(255, 72, 72, 72),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.heart_broken,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
