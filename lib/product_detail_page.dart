import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/counter.dart';
import 'package:flutter_cloth_store_app/size_config.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      _counter.increment();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter.decrement();
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _decrementCounter,
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
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      Text(
                        _counter.value.toString(),
                        style: KEncodeSansBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          color: KDarkBrown
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                       GestureDetector(
                        onTap: _incrementCounter,
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
                            Icons.add,
                            color: KGrey,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.all(2),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: KYellow
                    ),
                    onRatingUpdate: (rating){
                      debugPrint(rating.toString());
                    },
                    unratedColor: KLightGrey,
                  ),
                  SizedBox(width: 8,),
                  RichText(

                    text: TextSpan(
                      text: '5.0 ',
                      style: KEncodeSansRegular.copyWith(
                        color: KDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5
                      ),
                      children: <TextSpan> [
                        TextSpan(
                          text: '(7.932 reviews)',
                          style: KEncodeSansRegular.copyWith(
                            color:KBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5
                          ) ,
                        ),
                      ]
                    )
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
