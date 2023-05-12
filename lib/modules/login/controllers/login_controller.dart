import 'package:app_compras/global/constant/route.dart';
import 'package:app_compras/modules/login/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_compras/models/user.dart';
import 'package:app_compras/global/constant/api_constant.dart';

class LoginController extends GetxController {
  final LoginRepository loginRepo = Get.find<LoginRepository>();
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;
  var isError = false.obs;
  var errorMessage = ''.obs;
  var user = User().obs;

  Future<void> login() async {
    if(formKey.currentState!.validate()){
      isLoading.value = true;
      final auth = await loginRepo.loginUser(emailController.text, passwordController.text);
      if(auth.error == null){
        User user = auth.data as User;
        Get.offAndToNamed(Routes.homeRoute);
        box.write('token', user.token);
        box.write('user_id', user.id);
        Get.showSnackbar(
          GetSnackBar(
            message: "The user has successfully logged in.",
            icon: const Icon(Icons.refresh),
            duration: const Duration(seconds: 2),
          ),
        );
      }  
      else{
        Get.snackbar(
          "Alert",
          "${auth.error}",
          colorText: Colors.white,
          backgroundColor: Colors.redAccent,
          icon: const Icon(Icons.add_alert),
        );
      } 
    }
  }
}
