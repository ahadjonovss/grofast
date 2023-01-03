class CategoryModel {
  String categoryName;
  String? docId;
  String imageUrl;

  CategoryModel({
    required this.imageUrl,
    required this.categoryName,
    required this.docId,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        imageUrl: json["imageUrl"]??'no image',
        categoryName: json["categoryName"] ?? "no data",
        docId: json["categoryId"] ?? "no Id");
  }

  Map<String, dynamic> toJson() {
    return {
      "imageUrl":imageUrl,
      "categoryName": categoryName,
      "categoryId": docId};
  }
}
