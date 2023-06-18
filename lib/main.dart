import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloth_store_app/app_styles.dart';
import 'package:flutter_cloth_store_app/product_detail_page.dart';
import 'package:flutter_cloth_store_app/size_config.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: const HomeScreen(),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //   floatingActionButton: Container(
      //     padding: const EdgeInsets.symmetric(horizontal: 8),
      //     height: 64,
      //     child: CustomNavigationBar(
      //       isFloating: true,
      //       borderRadius: const Radius.circular(40),
      //       selectedColor: Kwhite,
      //       unSelectedColor: KGrey,
      //       backgroundColor: KBrown,
      //       strokeColor: Colors.transparent,
      //       scaleFactor: 0.1,
      //       iconSize: 40,
      //       items: [
      //         CustomNavigationBarItem(
      //           icon: _currentIndex == 0
      //               ? SvgPicture.asset("assets/home_icon_selected.svg")
      //               : SvgPicture.asset("assets/home_icon_unselected.svg"),
      //         ),
      //         CustomNavigationBarItem(
      //           icon: _currentIndex == 1
      //               ? SvgPicture.asset("assets/cart_icon_selected.svg")
      //               : SvgPicture.asset("assets/cart_icon_unselected.svg"),
      //         ),
      //         CustomNavigationBarItem(
      //           icon: _currentIndex == 2
      //               ? SvgPicture.asset("assets/favorite_icon_selected.svg")
      //               : SvgPicture.asset("assets/favorite_icon_unselected.svg"),
      //         ),
      //         CustomNavigationBarItem(
      //           icon: _currentIndex == 3
      //               ? SvgPicture.asset("assets/account_icon_selected.svg")
      //               : SvgPicture.asset("assets/account_icon_unselected.svg"),
      //         ),
      //       ],
      //       currentIndex: _currentIndex,
      //       onTap: (index) {
      //         setState(() {
      //           _currentIndex = index;
      //         });
      //       },
      //     ),
      //   ),
      // ),
      home: ProductDetailPage(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ["All items", "Dress", "Hat", "Watch"];

  List<String> icons = [
    "all_items_icon",
    "dress_icon",
    "hat_icon",
    "watch_icon",
  ];

  int current = 0;

  List<String> images = [
    'image-01.png',
    'image-02.png',
    'image-03.png',
    'image-04.png',
    'image-04.png',
    'image-05.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Welcome 👋',
                      style: KEncodeSansRegular.copyWith(
                        color: KDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                    Text(
                      'Albert Stevano',
                      style: KEncodeSansBold.copyWith(
                        color: KDarkBrown,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: KGrey,
                  backgroundImage: NetworkImage(
                      'https://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: KEncodeSansRegular.copyWith(
                      color: KDarkGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      prefixIcon: const IconTheme(
                        data: IconThemeData(
                          color: KDarkGrey,
                        ),
                        child: Icon(Icons.search),
                      ),
                      hintText: 'Search Clothes...',
                      border: kInputBorder,
                      errorBorder: kInputBorder,
                      disabledBorder: kInputBorder,
                      focusedBorder: kInputBorder,
                      focusedErrorBorder: kInputBorder,
                      enabledBorder: kInputBorder,
                      hintStyle: KEncodeSansRegular.copyWith(
                        color: KDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 49,
                  width: 49,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(KBorderRadius),
                    color: KBlack,
                  ),
                  child: SvgPicture.asset(
                    'assets/filter_icon.svg',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            height: 36,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? KPaddingHorizontal : 10,
                      right: index == categories.length - 1
                          ? KPaddingHorizontal
                          : 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 36,
                    decoration: BoxDecoration(
                        color: current == index ? KBrown : Kwhite,
                        borderRadius: BorderRadius.circular(8),
                        border: current == index
                            ? null
                            : Border.all(color: KLightGrey, width: 1)),
                    child: Row(
                      children: [
                        SvgPicture.asset(current == index
                            ? 'assets/${icons[index]}_selected.svg'
                            : 'assets/${icons[index]}_unselected.svg'),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          categories[index],
                          style: KEncodeSansMedium.copyWith(
                            color: current == index ? Kwhite : KDarkBrown,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 23,
            itemCount: images.length,
            padding: const EdgeInsets.symmetric(
              horizontal: KPaddingHorizontal,
            ),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(KBorderRadius),
                          child: Image.asset(
                            'assets/images/${images[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 12,
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                              'assets/favorite_cloth_icon_unselected.svg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Modern light clothes',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: KEncodeSansSemiBold.copyWith(
                      color: KDarkBrown,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                  ),
                  Text(
                    'Dress Modern',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: KEncodeSansRegular.copyWith(
                      color: KGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$212.99',
                        style: KEncodeSansSemiBold.copyWith(
                          color: KDarkBrown,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: KYellow,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '5.0',
                            style: KEncodeSansRegular.copyWith(
                              color: KDarkBrown,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
