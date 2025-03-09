import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:project_bills/core/widget/awesome_dialog.dart';

part 'bills_state.dart';

class BillsCubit extends Cubit<BillsState> {
  BillsCubit() : super(BillsInitial());
  File? image;
  final picker = ImagePicker();
  static BillsCubit get(context) => BlocProvider.of(context);
  TextEditingController titleController =  TextEditingController();
  TextEditingController idController =  TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  GlobalKey<FormState> formKeyBill = GlobalKey();

   addBill(context) async{
    await AwesomeDialogFunction.awesomeDialogSuccess(context,'تم بنجاح ', 'تم عملية اضضافة الفاتورة بنجاح');
    Navigator.pop(context);
   }
  Future getImage() async {
    try{
      emit(BillsLoadingImage());
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        image = File(pickedFile.path);
        emit(BillsLoadedImage());
        print('-------------------------');
        print( image?.path);
      } else {
        print('No image selected.');
      }
    }catch(e){
      // emit(UsersError());
    }
  }

}
