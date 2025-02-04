

import 'package:shared_preferences/shared_preferences.dart';

String DefaultProfilePic='data:image/png;base64,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';

Future<void> writeuserdata(Userdata) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('token', Userdata['token']);
  await prefs.setString('email', Userdata['data']['email']);
  await prefs.setString('First', Userdata['data']['firstName']);
  await prefs.setString('Last', Userdata['data']['lastName']);
  await prefs.setString('mobile', Userdata['data']['mobile']);
  await prefs.setString('photo', Userdata['data']['photo']);




}

Future<void> writeemail(email) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('email', email);
}

Future<void> writeotp(otp) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('otp', otp);
}


Future<String?> readuserdata(key) async {
  final prefs = await SharedPreferences.getInstance();

  String? mydata=await prefs.getString(key);
  return mydata;
}

Future<bool> removetoken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  return true;
}

Future<void> updateprofileuser(String value,String data)async{
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString(value, data);

}