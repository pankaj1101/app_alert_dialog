import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppModal extends StatelessWidget {
  final SvgPicture? icon;
  final String subject;
  final String message;
  final Widget? extraContent;
  final List<Widget> buttons;
  final bool closeIcon;

  const AppModal({
    super.key,
    required this.message,
    required this.subject,
    this.icon,
    this.extraContent,
    required this.buttons,
    this.closeIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      key: const ValueKey('modalKey'),
      actionsPadding: EdgeInsets.only(bottom: 20),
      titlePadding: EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      title: Center(
        child: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  closeIcon
                      ? Container(
                          margin: EdgeInsets.only(right: 16),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.close),
                            ),
                          ),
                        )
                      : SizedBox(height: 15),
                ],
              ),
              SizedBox(height: 10),
              icon ?? const SizedBox(),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  subject,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
          extraContent ?? const SizedBox(height: 1),
        ],
      ),
      actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: buttons),
          ),
        ),
      ],
    );
  }
}
