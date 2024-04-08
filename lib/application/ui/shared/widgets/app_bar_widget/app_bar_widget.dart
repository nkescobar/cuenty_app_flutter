import 'package:flutter/material.dart';
import 'package:cuenty_app/application/app/design/index.dart'
    show AppRadius, AppColors;

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final toolbarHeight = 97.0;
  final String? title;
  final double? elevation;
  final RoundedRectangleBorder? border;
  const AppBarWidget({super.key, this.title, this.border, this.elevation});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      elevation: elevation ?? 8.0,
      leadingWidth: 56,
      shape: border ??
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: AppRadius.small, bottomRight: AppRadius.small)),
      backgroundColor: AppColors.brandLightColor,
      leading: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.fromLTRB(16, 45, 0, 12),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.brandLightColorBorder),
            borderRadius: BorderRadius.circular(12)),
        child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.brandPrimaryColor,
            )),
      ),
      title: title != null
          ? Padding(
              padding: const EdgeInsets.fromLTRB(0, 45, 16, 12),
              child: Text(
                title as String,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            )
          : null,
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
