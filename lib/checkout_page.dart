import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/size_config.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          debugPrint('product checked out successfully!');
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: KDarkBrown),
          child: Center(
            child: Text(
              'Pay',
              style: KEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 5, color: Kwhite),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
