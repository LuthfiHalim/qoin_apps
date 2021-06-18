import 'package:qoin_apps/domains/login.dart';
import 'package:qoin_apps/misc/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  Login login = Login();

  Future<Login> loadData() async {
    var _sp = await this._getSharedPreferences();
    this.login.userName = _sp.getString(AppConstants.LOGIN_USERNAME) ?? "";
    this.login.password = _sp.getString(AppConstants.LOGIN_PASSWORD) ?? "";
    return this.login;
  }

  void clear() {
    this._getSharedPreferences().then((sp) {
      this.clearProperties();
      sp.clear();
    });
  }

  void clearWithCallback(Function callback) {
    this._getSharedPreferences().then((sp) {
      sp.clear().then((onValue) {
        this.clearProperties();
        callback();
      });
    });
  }

  void clearProperties() {
    this.login.userName = "";
    this.login.password = "";
  }

  Future<void> remove() {
    return this._getSharedPreferences().then((sp) {
      sp.remove(AppConstants.LOGIN_USERNAME);
      sp.remove(AppConstants.LOGIN_PASSWORD);
    });
  }

  Future<void> save(Login _login) {
    this.login = _login;
    return this._getSharedPreferences().then((sp) {
      sp.setString(AppConstants.LOGIN_USERNAME, this.login.userName);
      sp.setString(AppConstants.LOGIN_PASSWORD, this.login.password);
    });
  }

  Future<SharedPreferences> _getSharedPreferences() async {
    return SharedPreferences.getInstance();
  }
}
