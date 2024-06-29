import 'package:ecommerce1_seller/const/const.dart';
import 'package:ecommerce1_seller/views/widgets/appbar_widget.dart';
import 'package:ecommerce1_seller/views/widgets/normal_text.dart';
import 'package:intl/intl.dart' as intl;

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {}, 
        child: const Icon(Icons.add),
      ),
      appBar: appbarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              20, 
              (index) => ListTile(
                onTap: () {},
                leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover),
                title: boldText(text: "Products title", color: fontGrey),
                subtitle: normalText(text: "\$40.0", color: darkGrey),
              )),
          ),
        ),
      ),
    );
  }
}