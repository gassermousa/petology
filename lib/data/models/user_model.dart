class UserModel {
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? country;

  UserModel(
      {this.email,
      this.password,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.country});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = email;
    data['password'] = password;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['phoneNumber'] = phoneNumber;
    data['country'] = country;
    return data;
  }
}
