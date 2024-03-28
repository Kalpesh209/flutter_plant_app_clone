import 'package:flutter/material.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_colors.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_images.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_plant_clone_app/Models/PlantModel.dart';

class PlantDetailsScreen extends StatelessWidget {
  final PlantsModel plant;
  const PlantDetailsScreen({
    Key? key,
    required this.plant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreen,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greenColor.withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: DecorationImage(
                      image: AssetImage(plant.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: plant.name,
                                  style: TextStyle(
                                    color:
                                        AppColors.blackColor.withOpacity(0.8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '  (${plant.category} Plant)',
                                  style: TextStyle(
                                    color:
                                        AppColors.blackColor.withOpacity(0.5),
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 30.0,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.greenColor.withOpacity(0.2),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              AppImages.heart,
                              color: AppColors.whiteColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          text: plant.description,
                          style: TextStyle(
                            color: AppColors.blackColor.withOpacity(0.5),
                            fontSize: 15.0,
                            height: 1.4,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        AppStrings.treatment,
                        style: TextStyle(
                          color: AppColors.blackColor.withOpacity(0.9),
                          fontSize: 18.0,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AppImages.sun,
                            color: AppColors.blackColor,
                            height: 24.0,
                          ),
                          Image.asset(
                            AppImages.drop,
                            color: AppColors.blackColor,
                            height: 24.0,
                          ),
                          Image.asset(
                            AppImages.temperature,
                            color: AppColors.blackColor,
                            height: 24.0,
                          ),
                          Image.asset(
                            AppImages.upArrow,
                            color: AppColors.blackColor,
                            height: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Image.asset(
                  AppImages.cart,
                  color: AppColors.blackColor,
                  height: 40.0,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greenColor.withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, -5),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Text(
                  'Buy \$${plant.price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: AppColors.whiteColor.withOpacity(0.9),
                    fontSize: 18.0,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
