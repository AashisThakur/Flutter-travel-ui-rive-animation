import 'package:flutter/material.dart';
import 'package:flutter_travel_app/models/menu.dart';
import 'package:rive/rive.dart';

import '../utils/rive_utils.dart';
import 'side_bar.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  Menu selectedSideMenu = sideMenus.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color.fromARGB(255, 46, 60, 83),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCard(
                name: "Ashish",
                profession: "Software Developer",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 32, bottom: 10),
                child: Text(
                  "Browse",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sideMenus.map((menu) => SideBar(
                    menu: menu,
                    selectedMenu: selectedSideMenu,
                    press: () {
                      RiveUtils.chnageSMIBoolState(menu.rive.status!);
                      setState(() {
                        selectedSideMenu = menu;
                      });
                    },
                    riveOnInit: (artBoard) {
                      menu.rive.status = RiveUtils.getRiveInput(artBoard,
                          stateMachineName: menu.rive.stateMachineName);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

// class SideMenuTile extends StatelessWidget {
//   const SideMenuTile(
//       {super.key,
//       required this.menu,
//       required this.press,
//       required this.riveonInit,
//       required this.isActive});

//   final Menu menu;
//   final VoidCallback press;
//   final ValueChanged<Artboard> riveonInit;
//   final bool isActive;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Padding(
//           padding: EdgeInsets.only(left: 20.0, right: 20),
//           child: Divider(
//             height: 1,
//             color: Colors.white24,
//           ),
//         ),
//         ListTile(
//           onTap: press,
//           leading: SizedBox(
//             height: 34,
//             width: 34,
//             child: RiveAnimation.asset(
//               menu.rive.src,
//               artboard: menu.rive.artBoard,
//               onInit: riveonInit,
//             ),
//           ),
//           title: Text(
//             menu.title,
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.profession,
  });
  final String name, profession;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.person_2_outlined,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
