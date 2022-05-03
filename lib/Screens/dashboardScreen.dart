import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/login_screen.dart';
import 'package:flutter_assignment/Widgets/carousel_container_widget.dart';
import 'package:flutter_assignment/Widgets/offer_rewards_widget.dart';
import 'package:flutter_assignment/Widgets/sponsored_widget.dart';
import 'package:flutter_assignment/Widgets/transfer_money_container.dart';
import 'package:flutter_assignment/constraints/styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: ThemeStyles.darkBlueColor,
        automaticallyImplyLeading: false,
        title: Row(children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: ThemeStyles.whiteColor)),
            child: const Icon(Icons.person),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            color: ThemeStyles.disabledColor,
            height: 25,
            width: 2,
          ),
          Container(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    "assets/India_flag.png",
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text("Indore"),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          )
        ]),
        actions: [
          const Icon(Icons.qr_code),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.remove("email");
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                });
              },
              icon: const Icon(Icons.logout),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CarouselContainerWidget(),
            TransferMoney(),
            OfferRewardsRef(),
            SponsoredContainer(),
            CarouselContainerWidget(),
          ],
        ),
      ),
    );
  }
}
