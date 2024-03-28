import 'package:flutter_plant_clone_app/AppUtils/app_images.dart';

class BottoNavItemModel {
  final int id;
  final String imagePath;

  BottoNavItemModel(this.id, this.imagePath);
}

List<BottoNavItemModel> bottomMenuItemList = [
  BottoNavItemModel(
    0,
    AppImages.iconHome,
  ),
  BottoNavItemModel(
    1,
    AppImages.iconHeart,
  ),
  BottoNavItemModel(
    2,
    AppImages.iconCart,
  ),
  BottoNavItemModel(
    3,
    AppImages.iconSettings,
  ),
];
