class UserModel {
  String? userId;
  String name;
  String email;
  String password;
  List orders;

  UserModel({
    required this.name,
    required this.password,
    required this.email,
    required this.orders,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json["name"]??"",
        password: json["password"]??"",
        email: json["email"]??"",
        orders: json["orders"]??[]);
  }

  Map<String,dynamic> toJson(){
    return {
      "userId":userId,
      "name":name,
      "password":password,
      "email":email,
      "orders":orders,
    };
  }
}