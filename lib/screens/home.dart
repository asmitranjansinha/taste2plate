import 'package:flutter/material.dart';
import 'package:taste2plate/models/tastestoplate.dart';
import 'package:taste2plate/screens/login_screen.dart';
import 'package:taste2plate/services/remote_services.dart';
import 'package:taste2plate/widgets/food_story.dart';
import 'package:taste2plate/widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const route = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Tastestoplate? tastestoplate;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    tastestoplate = await RemoteService().getTastestoplate();
    if (tastestoplate != null) {
      setState(() {
        isLoaded = true;
      });
      print(tastestoplate!.slider![0].file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        titleSpacing: 0,
        title: Row(
          children: [
            const Image(width: 40, image: AssetImage("assets/images/logo.png")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Tastes2Plate",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Intercity Food Delivery",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
        actions: const [
          Image(
            image: AssetImage(
                "assets/icons/iconfinder_ohutlined_shopping_cart_4280487 (2).png"),
            color: Colors.white,
            width: 40,
          ),
          SizedBox(
            width: 17,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const Image(
                height: 170, image: AssetImage("assets/images/logo.png")),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              color: Colors.red,
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                      color: Colors.white,
                      width: 40,
                      image: AssetImage(
                          "assets/icons/iconfinder_user_925901.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Hello, ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.red,
                  width: 30,
                  image: AssetImage("assets/icons/home.png")),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/box.png")),
              title: const Text(
                "Order",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/user.png")),
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/star.png")),
              title: const Text(
                "Rate App",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/share.png")),
              title: const Text(
                "Share App",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/mail.png")),
              title: const Text(
                "Contact Us",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.route, (route) => false);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              leading: const Image(
                  color: Colors.black54,
                  width: 30,
                  image: AssetImage("assets/icons/logout.png")),
              title: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.red,
            child: Column(children: const [
              SizedBox(
                width: 370,
                child: InputField(
                    hinttxt: "Search",
                    icon:
                        "assets/icons/iconfinder_-_Magnifier-Search-Zoom-_3844467.png"),
              ),
            ]),
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.amberAccent,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Image(
                    height: 30,
                    image: AssetImage(
                        "assets/icons/iconfinder_location_1814106.png")),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Select delivery location",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FoodStory("assets/images/photo-1606791422814-b32c705e3e2f.jpeg",
                  "Cooked Food"),
              FoodStory(
                  "assets/images/stock-photo-indian-sweets-served-silver-wooden-plate-variety-peda-burfi-laddu-decorative-selective-focus-diwali-100924860.jpg",
                  "Sweets"),
              FoodStory(
                  "assets/images/various-grains-732-549-feature-thumb-1-732x549.jpg",
                  "Grains"),
              FoodStory("assets/images/74416043.cms.webp", "Spices"),
              FoodStory(
                  "assets/images/istockphoto-1044330750-612x612.jpg", "Chicken")
            ],
          ),
          
        ],
      ),
    );
  }
}
