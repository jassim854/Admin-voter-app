import 'package:admin_voter_app/utilis/app_colors.dart';
import 'package:admin_voter_app/utilis/app_typography.dart';
import 'package:flutter/material.dart';



class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  String? title;
  String? imagess;
  List<Widget>? action;
  Color? background;
  List<Widget>? actionsa;
  AppBarWidget(
      {super.key,
      required this.title,
      this.imagess,
      this.action,
      this.background});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title!,
        style: heading22BlackStyle.copyWith(fontWeight: FontWeight.w600),
      ),
      actions: action,
      backgroundColor: background ?? AppColor.appbarcolour,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
