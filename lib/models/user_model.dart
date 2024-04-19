class UserModel {
  final String? userid;
  final String email;
  final String password;
  final int phoneNo;
  
  const UserModel({
    this.userid,
    required this.email,
    required this.password,
    required this.phoneNo,
  });
  
  toJson(){
    return{
      "email": email,
      "password": password,
      "phoneNo": phoneNo
    };
  }
}