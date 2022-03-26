import 'package:devs_outliers/models/user_store.dart';
import 'package:flutter/cupertino.dart';


class UserManager extends ChangeNotifier {

  UserStore? user;

  UserManager() {
    _loadCurrentUser();
  }
  bool _loading = false;
  bool get loading => _loading;
  bool get isLoggedIn => user != null;


  Future<void> signIn({UserStore? user, Function? onFail, Function? onSuccess}) async {
    loading = true;
    try {

      await _loadCurrentUser();
      onSuccess!();
    }  catch (e) {
      onFail!((e));
    }
    loading = false;
  }

  Future<void> signUp({UserStore? user, Function? onFail, Function? onSuccess}) async {
    loading = true;
    try {

    
      onSuccess!();
    }  catch (e) {
      onFail!((e));
    }
    loading = false;
  }

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> _loadCurrentUser() async {

    }
  


  void signOut(){
  
  }

  

}
