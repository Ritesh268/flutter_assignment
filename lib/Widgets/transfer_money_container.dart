import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/tranfer_money_icon.dart';
import 'package:flutter_assignment/constraints/styles.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ThemeStyles.whiteColor,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, top: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              "Transfer Money",
              style: ThemeStyles.fontSizeNormalBlack,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TransferMoneyIconContainer(
                    iconImage: Icons.person, textValue: "To Mobile \n  Number"),
                TransferMoneyIconContainer(
                    iconImage: Icons.wallet, textValue: "To Wallet\n Address"),
                TransferMoneyIconContainer(
                    iconImage: Icons.bookmarks_outlined,
                    textValue: "Check Bank \n  Balance")
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "My UPI ID: ",
                      style: ThemeStyles.fontSizeBoldB,
                    ),
                    Text(
                      "98767464444@gjb",
                      style: ThemeStyles.fontSizeNormalBlack,
                    )
                  ],
                ),
                const Icon(Icons.navigate_next_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
