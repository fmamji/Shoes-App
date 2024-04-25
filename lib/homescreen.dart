import 'package:flutter/material.dart';
import 'package:practice_project/components/button_widgets/textfield.dart';
import 'package:practice_project/components/constant_components.dart/image_constant.dart';
// import 'package:flutter_tutorial/Components/buttonfile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> ImagesLogo = [
    AppImage.nikeLogo,
    AppImage.pumaLogo,
    AppImage.converseLogo,
    AppImage.addidasLogo,
    AppImage.showLogo,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hellow World"),
          actions: [
            Icon(Icons.shopping_bag_outlined),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Privacy",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    "LogOUT",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.logout_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
            child: Column(
              children: [
                textbutton(
                    hintext: "Looking For Shoes",
                    prefixIcon: Icon(Icons.search_outlined)),
                Text(
                  "Sports",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset(AppImage.nikeLogo[index]),
                        ),
                      );
                    }),
                  ),
                )
              ],
            )));
  }
}
//  button({
//     height = 50,
//     width = 40,
//     text = "HELLOW WORLD"
//   })
