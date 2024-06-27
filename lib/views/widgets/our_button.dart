import 'package:ecommerce1_seller/const/colors.dart';
import 'package:ecommerce1_seller/const/const.dart';
import 'package:ecommerce1_seller/views/widgets/normal_text.dart';

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      primary: color,
      padding: const EdgeInsets.all(12)
    ),
    onPressed: onPress,
    child: normalText(
      text: title, 
      size: 16.0
    )
  );
}