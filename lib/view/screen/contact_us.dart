import 'dart:io';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/shared/colors.dart';
import '../../../core/shared/text_styles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.mainColor,
        title: Text('مركز المساعدة' ,style: TextStyle(
          color: ProjectColors.whiteColor
        ),),

      ),
      body: Container(
        color: ProjectColors.moreGrayColors,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: ListView(
            children: [
              _buildContactOption(
                context,
                icon: Icon(Icons.email),
                text: "خدمه العملاء",
                onTap: () {

                },
              ),
              SizedBox(height: 25),
              _buildContactOption(
                context,
                icon: Image.asset('assets/images/whatsapp.png', height: 25, width: 25, fit: BoxFit.fill),
                text: "واتس اب",
                onTap: () async {

                },
              ),
              SizedBox(height: 20),
              _buildContactOption(
                context,
                icon: Image.asset('assets/images/internet.png', height: 25, width: 25, fit: BoxFit.fill),
                text: "موقع الكتروني",
              ),
              SizedBox(height: 20),
              _buildContactOption(
                context,
                icon: Icon(Icons.facebook, color: Colors.blue),
                text: "فيس بوك",
                onTap: (){},
              ),
              SizedBox(height: 20),
              _buildContactOption(
                context,
                icon: Icon(EvaIcons.twitter, color: Colors.blue),
                text: "تويتر",
              ),
              SizedBox(height: 20),
              _buildContactOption(
                context,
                icon: Image.asset('assets/images/instagram.png', height: 25, width: 25, fit: BoxFit.fill),
                text: "انستقرام",
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactOption(BuildContext context, {required Widget icon, required String text, void Function()? onTap}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      decoration: BoxDecoration(
        color: ProjectColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            icon,
            SizedBox(width: 20),
            Text(text, style: TextStyles.font16BlackBold),
          ],
        ),
      ),
    );
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}








