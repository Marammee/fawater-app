
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AwesomeDialogFunction   {
  static  awesomeDialogError(context , String title , String desc){
    return    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      headerAnimationLoop: false,
      title: title,
      desc: desc,
      btnOkOnPress: () {},
      btnOkIcon: Icons.cancel,
      btnOkColor: Colors.grey,
    ).show();
  }
  static  awesomeDialogSuccess(context, String title, String desc ){
    return     AwesomeDialog(
      context: context,
      animType: AnimType.leftSlide,
      headerAnimationLoop: false,
      dialogType: DialogType.success,
      showCloseIcon: true,
      title: title,
      desc: desc,
      btnOkOnPress: (){

      },
      btnOkIcon: Icons.check_circle,
      onDismissCallback: (type) {
        debugPrint('Dialog Dissmiss from callback $type');
      },
    ).show();
  }
  static  awesomeDialogQuestion(context , String title , String desc , void Function()? btnOkOnPress ,void Function()? btnCancelOnPress){
    return   AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: title,
      desc: desc,
      buttonsTextStyle: const TextStyle(color: Colors.black , fontWeight: FontWeight.bold),
      showCloseIcon: true,
      btnCancelOnPress:btnCancelOnPress,
      btnOkOnPress: btnOkOnPress,
      btnCancelColor: Colors.grey,

    ).show();
  }
}
