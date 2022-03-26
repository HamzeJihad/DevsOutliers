
class UserStore {

  UserStore({this.email, this.password, this.name, this.id});

  String ? email;
  String ? password;
  String ? name;
  String? confirmPassword;
  String ? id;  
  
  UserStore.fromDocument(){
   
   
  }
 

  bool admin = false;
  
  Future<void> saveData()async{

  }

  Map<String, dynamic> toMap(){
   return {
      'name': name,
      'email': email,
      
    };
  }



} 