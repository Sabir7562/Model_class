class UserModel{
  String? name;
  int? age;
  String? Gender;
  UserModel({required this.name,required this.Gender,required this.age});
  //from Map
  factory UserModel.fromMap(Map<String,dynamic> map){
    return UserModel(name: map['name'], Gender: map['Gender'], age: map['age']);
  }

  //to Map
  Map<String,dynamic> toMap(){
    return {
      "name":name,
      "age":age,
      "Gender":Gender
    };
  }
}