class UserData {
  String fname;
  String lname;
  String username;
  String email;
  String password;
  String phone_number;
  String address;
  String age;
  DateTime birthday;
  String gender;

  UserData(
      {required this.fname,
      required this.lname,
      required this.username,
      required this.email,
      required this.password,
      required this.phone_number,
      required this.address,
      required this.age,
      required this.birthday,
      required this.gender});
  convert2map() {
    return {
      "Fname": fname,
      "Lname": lname,
      "username": username,
      "email": email,
      "password": password,
      "Phone_number": phone_number,
      "Address": address,
      "Age": age,
      "birthday": birthday,
      "gender": gender,
    };
  }
}
