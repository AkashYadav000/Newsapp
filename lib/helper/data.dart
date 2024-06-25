import 'package:flutternews/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  categories.add(CategoryModel(
    categoryName: "Business",
    imageUrl:
        "https://tse4.mm.bing.net/th?id=OIP.t-DhgTXfh1tQ_rab5tdyOQHaEK&pid=Api&P=0&h=220",
  ));
  categories.add(CategoryModel(
    categoryName: "Entertainment",
    imageUrl: "https://wallpapercave.com/wp/wp5293748.jpg",
  ));
  categories.add(CategoryModel(
    categoryName: "General",
    imageUrl:
        "https://tse2.mm.bing.net/th?id=OIP.EjAL2jn03BXr8OOlqUFm7gHaEK&pid=Api&P=0&h=220",
  ));
  categories.add(CategoryModel(
    categoryName: "Health",
    imageUrl:
        "https://tse3.mm.bing.net/th?id=OIP.gu3JKm__o7-OJUqGnGNZ0AHaET&pid=Api&P=0&h=220",
  ));
  categories.add(CategoryModel(
    categoryName: "Science",
    imageUrl: "https://wallpaperaccess.com/full/758472.jpg",
  ));

  return categories;
}
