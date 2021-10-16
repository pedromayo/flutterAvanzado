class UserModel {
  UserModel(
      {this.id = 0,
      this.email,
      this.firstName = "",
      this.lastName = "",
      this.avatar,
      this.isFavorite = false});

  int id;
  String? email;
  String firstName;
  String lastName;
  String? avatar;

  bool isFavorite;

//MARK:- ESTO PASA DE JSON A MODELO
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

//MARK:- ESTO PASA DE MODELO A JSON
  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
