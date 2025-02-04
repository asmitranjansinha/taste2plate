import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taste2plate/controller/content_controller.dart';
import 'package:taste2plate/widgets/carousel.dart';
import 'package:taste2plate/widgets/food_story.dart';
import 'package:taste2plate/widgets/product_deal.dart';
import 'package:taste2plate/widgets/text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const route = 'home';

  @override
  Widget build(BuildContext context) {
    final ContentController contentController = Get.put(ContentController());

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
          SizedBox(width: 17),
        ],
      ),
      drawer: _buildDrawer(context),
      body: GetBuilder<ContentController>(
        initState: (_) => contentController.getTaste(),
        builder: (controller) {
          if (controller.isLoading) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.red));
          }

          if (controller.content.productDeal == null) {
            return const Center(child: Text("No data available"));
          }

          final data = controller.content;

          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                _buildSearchBar(),
                _buildLocationSelector(),
                const SizedBox(height: 10),
                _buildFoodCategories(),
                const SizedBox(height: 10),
                CarouselCard(slider: data.slider),
                const SizedBox(height: 15),
                _buildDealsOfTheDay(),
                const SizedBox(height: 20),
                for (var each in data.productDeal!)
                  ProductDealCard(
                    image: each.file![0].location,
                    name: each.name,
                    category: each.tags,
                    pointExpDate: each.endDate,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const Image(height: 170, image: AssetImage("assets/images/logo.png")),
          const SizedBox(height: 30),
          _buildDrawerHeader(),
          _buildDrawerItem("Home", "assets/icons/home.png", Colors.red, () {}),
          _buildDrawerItem(
              "Order", "assets/icons/box.png", Colors.black54, () {}),
          _buildDrawerItem(
              "Profile", "assets/icons/user.png", Colors.black54, () {}),
          _buildDrawerItem(
              "Rate App", "assets/icons/star.png", Colors.black54, () {}),
          _buildDrawerItem(
              "Share App", "assets/icons/share.png", Colors.black54, () {}),
          _buildDrawerItem(
              "Contact Us", "assets/icons/mail.png", Colors.black54, () {}),
          _buildDrawerItem(
            "Logout",
            "assets/icons/logout.png",
            Colors.black54,
            () => Navigator.pushNamedAndRemoveUntil(
                context, 'login', (route) => false),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      height: 50,
      color: Colors.red,
      child: Row(
        children: const [
          SizedBox(width: 20),
          Image(
              color: Colors.white,
              width: 40,
              image: AssetImage("assets/icons/iconfinder_user_925901.png")),
          SizedBox(width: 20),
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
    );
  }

  Widget _buildDrawerItem(
      String title, String iconPath, Color iconColor, VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
      leading: Image(color: iconColor, width: 30, image: AssetImage(iconPath)),
      title: Text(title,
          style: TextStyle(color: iconColor, fontFamily: "Poppins")),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.red,
      child: const Column(
        children: [
          SizedBox(
            width: 370,
            child: InputField(
              hinttxt: "Search",
              icon:
                  "assets/icons/iconfinder_-_Magnifier-Search-Zoom-_3844467.png",
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationSelector() {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.amberAccent,
      child: Row(
        children: const [
          SizedBox(width: 10),
          Image(
              height: 30,
              image:
                  AssetImage("assets/icons/iconfinder_location_1814106.png")),
          SizedBox(width: 5),
          Text(
            "Select delivery location",
            style:
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget _buildFoodCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
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
            "assets/images/istockphoto-1044330750-612x612.jpg", "Chicken"),
      ],
    );
  }

  Widget _buildDealsOfTheDay() {
    return Container(
      color: Colors.red,
      width: 200,
      height: 30,
      child: const Center(
        child: Text(
          "Deals of the Day",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 23, color: Colors.white),
        ),
      ),
    );
  }
}
