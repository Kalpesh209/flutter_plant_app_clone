import 'package:flutter_plant_clone_app/AppUtils/app_images.dart';
import 'package:flutter_plant_clone_app/AppUtils/app_strings.dart';
import 'package:flutter_plant_clone_app/Models/PlantModel.dart';

List<PlantsModel> plantsItemList = [
  PlantsModel(
    id: 0,
    name: AppStrings.succuient,
    imagePath: AppImages.img1,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 75.00,
    isFavorit: false,
  ),
  PlantsModel(
    id: 1,
    name: AppStrings.succuient,
    imagePath: AppImages.img2,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 75.00,
    isFavorit: false,
  ),
  PlantsModel(
    id: 2,
    name: AppStrings.ficusRetusa,
    imagePath: AppImages.img3,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 60.00,
    isFavorit: false,
  ),
  PlantsModel(
    id: 3,
    name: AppStrings.ficusRetusa,
    imagePath: AppImages.img5,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 90.00,
    isFavorit: false,
  ),
];

List<PlantsModel> populerPlants = [
  PlantsModel(
    id: 0,
    name: AppStrings.succuient,
    imagePath: AppImages.img01,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 75.00,
    isFavorit: false,
  ),
  PlantsModel(
    id: 1,
    name: AppStrings.succuient,
    imagePath: AppImages.img02,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 75.00,
    isFavorit: false,
  ),
  PlantsModel(
    id: 2,
    name: AppStrings.ficusRetusa,
    imagePath: AppImages.img03,
    category: AppStrings.office,
    description: AppStrings.loremIpSum,
    price: 60.00,
    isFavorit: false,
  ),
];
