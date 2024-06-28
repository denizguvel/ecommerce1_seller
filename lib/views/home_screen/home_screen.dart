import 'package:ecommerce1_seller/const/const.dart';
import 'package:ecommerce1_seller/views/widgets/dashboard_button.dart';
import 'package:ecommerce1_seller/views/widgets/normal_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: dashboard, color: darkGrey, size: 16.0),
        actions: [
          Center(
            child: normalText(text: intl.DateFormat('EEE, MMM d, ' 'yy').format(DateTime.now()), color: purpleColor),
          ),
          10.widthBox
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, title: products, count: "60", icon: icProducts),
                dashboardButton(context, title: orders, count: "15", icon: icOrders)
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, title: rating, count: "60", icon: icStar),
                dashboardButton(context, title: totalSales, count: "15", icon: icOrders)
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popular, color: fontGrey, size: 16.0),
            20.heightBox,
            ListView(
              shrinkWrap: true,
              children: List.generate(
                3, 
                (index) => ListTile(
                  leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover),
                  title: boldText(text: "Products title", color: fontGrey),
                  subtitle: normalText(text: "\$40.0", color: darkGrey),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}