import 'package:flutter/material.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_images.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_plant_clone_app/Models/category_model.dart';
import 'package:flutter_plant_clone_app/Models/plant_data.dart';
import 'package:flutter_plant_clone_app/Presentation/Screens/plant_detail_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  PageController controller = PageController();
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  navigatePlantDetailScreen(BuildContext context, int index) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) => PlantDetailsScreen(plant: plantsItemList[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        leadingWidth: 40,
        leading: TextButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.menu,
          ),
        ),
        actions: [
          Container(
            height: 40.0,
            width: 40.0,
            margin: const EdgeInsets.only(right: 20, top: 10, bottom: 5),
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greenColor.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: AssetImage(AppImages.pro),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: 15,
              ),
              child: Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 280.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.greenColor),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greenColor.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 45,
                          width: 250,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.search,
                              ),
                            ),
                          ),
                        ),
                        Image.asset(
                          AppImages.search,
                          height: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45.0,
                    width: 45.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greenColor.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      AppImages.adjust,
                      color: AppColors.whiteColor,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < categoriesItemList.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() => selectId = categoriesItemList[i].id);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            categoriesItemList[i].name,
                            style: TextStyle(
                              color: selectId == i
                                  ? AppColors.greenColor
                                  : AppColors.blackColor.withOpacity(0.7),
                              fontSize: 16.0,
                            ),
                          ),
                          if (selectId == i)
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.greenColor,
                            )
                        ],
                      ),
                    )
                ],
              ),
            ),
            SizedBox(
              height: 320.0,
              child: PageView.builder(
                itemCount: plantsItemList.length,
                controller: controller,
                physics: const BouncingScrollPhysics(),
                padEnds: false,
                pageSnapping: true,
                onPageChanged: (value) => setState(() => activePage = value),
                itemBuilder: (itemBuilder, index) {
                  bool active = index == activePage;
                  return slider(active, index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.popular,
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Image.asset(
                    AppImages.more,
                    color: AppColors.greenColor,
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130.0,
              child: ListView.builder(
                itemCount: populerPlants.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (itemBuilder, index) {
                  return Container(
                    width: 200.0,
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greenColor.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              populerPlants[index].imagePath,
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  populerPlants[index].name,
                                  style: TextStyle(
                                    color:
                                        AppColors.blackColor.withOpacity(0.7),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '\$${populerPlants[index].price.toStringAsFixed(0)}',
                                  style: TextStyle(
                                    color:
                                        AppColors.blackColor.withOpacity(0.4),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          right: 20,
                          bottom: 20,
                          child: CircleAvatar(
                            backgroundColor: AppColors.greenColor,
                            radius: 15,
                            child: Image.asset(
                              AppImages.add,
                              color: AppColors.whiteColor,
                              height: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer slider(active, index) {
    double margin = active ? 20 : 30;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      child: mainPlantsCard(index),
    );
  }

  Widget mainPlantsCard(index) {
    return GestureDetector(
      onTap: () {
        navigatePlantDetailScreen(context, index);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
          ],
          border: Border.all(color: AppColors.greenColor, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackColor.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage(plantsItemList[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CircleAvatar(
                backgroundColor: AppColors.greenColor,
                radius: 15,
                child: Image.asset(
                  AppImages.add,
                  color: AppColors.whiteColor,
                  height: 15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  '${plantsItemList[index].name} - \$${plantsItemList[index].price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: AppColors.blackColor.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int selectId = 0;
  int activePage = 0;
}
