import 'package:flutter/material.dart';
import 'package:movies_app_phonepe/common/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final bool centerTitle;
  final List<Widget>? actions;

  const CustomAppBar({Key? key, required this.title,this.centerTitle = true,this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: AppColors.bgColor,
      elevation: 0,
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
