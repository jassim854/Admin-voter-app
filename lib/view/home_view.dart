import 'package:admin_voter_app/utilis/app_colors.dart';
import 'package:admin_voter_app/utilis/app_typography.dart';
import 'package:admin_voter_app/view/auth_/new_voting.dart';
import 'package:admin_voter_app/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Smart And Secure Voting System'),
        actions: [Text('Admin-name')],
      ),
      body: Column(
        children: [
          
         CustomButton(
                      color: AppColor.divivdercolor,
                      height: height * 0.06,
                      
                      width: width * 0.8,
                      text: "Create New Poll",
                      style: subTitle16DarkGreyStyle.copyWith(fontSize: 22),
                      onpressed: () {
                       Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const new_voting_view()),
                          (route) => false,
                        );
                      }),
                  
        ],
      ),
    );
  }
}
