class CategoryModel {
  final int id;
  final String name;

  CategoryModel(this.id, this.name);
}

List<CategoryModel> categoriesItemList = [
  CategoryModel(0, 'All'),
  CategoryModel(1, 'Outdoor'),
  CategoryModel(2, 'Indoor'),
  CategoryModel(3, 'Office'),
  CategoryModel(4, 'Garden'),
];
