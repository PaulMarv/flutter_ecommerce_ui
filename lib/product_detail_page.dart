import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/counter.dart';
import 'package:flutter_cloth_store_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Counter _counter = Counter();

  void _incrementCounter() {
    setState(() {
      
    });
  }

  void _decrementCounter() {
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.blocksizeVertical! * 50,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        'assets/images/image_product_detail.png',
                        height: SizeConfig.blocksizeVertical! * 50,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                              child: SvgPicture.asset(
                                  'assets/arrow_back_icon.svg'),
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
                              child: SvgPicture.asset(
                                  'assets/favorite_black_icon.svg'),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('Modern light clothes',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: KEncodeSansSemiBold.copyWith(
                          color: KDarkBrown,
                          fontSize: SizeConfig.blockSizeHorizontal! * 7,
                        )),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: KBorderColor,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                            color: Kwhite,
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: KGrey,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
