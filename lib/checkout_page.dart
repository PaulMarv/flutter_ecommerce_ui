import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

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
          debugPrint('Payment Successful!');
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 60,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: KBrown,
          ),
          child: Center(
            child: Text(
              'Pay',
              style: KEncodeSansBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4, color: Kwhite),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: SizeConfig.blocksizeVertical! * 5,
                    width: SizeConfig.blocksizeVertical! * 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Kwhite,
                        boxShadow: [
                          BoxShadow(
                              color: KBrown.withOpacity(0.11),
                              spreadRadius: 0.0,
                              blurRadius: 12,
                              offset: const Offset(0, 5))
                        ]),
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset('assets/arrow_back_icon.svg'),
                  ),
                  Text(
                    'Checkout',
                    style: KEncodeSansSemiBold.copyWith(
                      color: KDarkBrown,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                    ),
                  ),
                  Container(
                      height: SizeConfig.blocksizeVertical! * 5,
                      width: SizeConfig.blocksizeVertical! * 5,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Kwhite,
                          boxShadow: [
                            BoxShadow(
                                color: KBrown.withOpacity(0.11),
                                spreadRadius: 0.0,
                                blurRadius: 12,
                                offset: const Offset(0, 5))
                          ]),
                      padding: const EdgeInsets.all(8),
                      child: const Center(
                        child: Icon(Icons.menu_rounded),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blocksizeVertical! * 3,
            ),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    
                  );
                })
          ],
        ),
      )),
    );
  }
}
