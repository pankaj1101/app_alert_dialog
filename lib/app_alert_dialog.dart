library app_alert_dialog;

import 'package:app_alert_dialog/app_modal.dart';
import 'package:app_alert_dialog/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppAlertDialogs {
  static void showAlertDialog({
    required BuildContext context,
    required String title,
    required String message,
    String iconPath = AppConstant.errorIcon,
    required Widget Function(BuildContext) primaryButton,
    Widget Function(BuildContext)? secondaryButton,
    bool showCloseIcon = false,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext alertContext) => PopScope(
        canPop: false,
        child: AppModal(
          subject: title,
          message: message,
          icon: SvgPicture.asset(iconPath),
          closeIcon: showCloseIcon,
          buttons: _buttonBuilder(
            alertContext,
            primaryButton,
            secondaryButton,
          ),
        ),
      ),
    );
  }

  static List<Widget> _buttonBuilder(
    BuildContext alertContext,
    Widget Function(BuildContext) primaryButton,
    Widget Function(BuildContext)? secondaryButton,
  ) {
    double buttonWidth = 296;
    List<Widget> buttonList = [];
    buttonList.add(
      SizedBox(width: buttonWidth, child: primaryButton(alertContext)),
    );
    if (secondaryButton != null) {
      buttonList.add(SizedBox(height: 12));
      buttonList.add(
        SizedBox(width: buttonWidth, child: secondaryButton(alertContext)),
      );
    }
    return buttonList;
  }
}
