import 'package:flutter/material.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_plant_clone_app/Models/BottomNavItemModel.dart';
import 'package:flutter_plant_clone_app/Presentation/Screens/home_page_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBarWidget> {
  PageController pageController = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: child.length,
        controller: pageController,
        onPageChanged: (value) => setState(() => selectIndex = value),
        itemBuilder: (itemBuilder, index) {
          return Container(
            child: child[index],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; bottomMenuItemList.length > i; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(i);
                      selectIndex = i;
                    });
                  },
                  child: Image.asset(
                    bottomMenuItemList[i].imagePath,
                    color: selectIndex == i
                        ? AppColors.greenColor
                        : AppColors.greyColor.withOpacity(0.5),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> child = [
  const HomePageScreen(),
  Container(color: AppColors.whiteColor),
  Container(color: AppColors.whiteColor),
  Container(color: AppColors.whiteColor),
];
