import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/product_detail_page.dart';
import 'package:flutter_cloth_store_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<String> images = [
    'image-01.png',
    'image-02.png',
    'image-03.png',
  ];
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProductDetailPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: SizeConfig.blocksizeVertical! * 4,
                      width: SizeConfig.blocksizeVertical! * 4,
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
                  ),
                  Text(
                    'Checkout',
                    style: KEncodeSansSemiBold.copyWith(
                      color: KDarkBrown,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                    ),
                  ),
                  Container(
                    height: SizeConfig.blocksizeVertical! * 4,
                    width: SizeConfig.blocksizeVertical! * 4,
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
                    child: const Icon(
                      Icons.menu_rounded,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: SizeConfig.blocksizeVertical! * 3,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.blocksizeVertical! * 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/images/${images[index]}',
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modern Light Clothes',
                                  style: KEncodeSansSemiBold.copyWith(
                                      color: KDarkBrown,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              3.5),
                                ),
                                Text(
                                  'Dress Modern',
                                  style: KEncodeSansRegular.copyWith(
                                      color: KDarkGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 2),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$ 299.3',
                                  style: KEncodeSansSemiBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blocksizeVertical! * 2,
                      ),
                      index != images.length - 1
                          ? const Divider(
                              color: KLightGrey,
                              thickness: 1,
                            )
                          : const SizedBox(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
