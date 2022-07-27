import 'package:flutter/material.dart';
import 'package:petology/presentation/componentes/divider.dart';
import 'package:hexcolor/hexcolor.dart';

class DefaultCardLoginWithFacebookAndGoogle extends StatelessWidget {
  const DefaultCardLoginWithFacebookAndGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultSignWithCard(
              iconData: Icons.facebook, text: 'facebook', onPressed: () {}),
          const SizedBox(
            width: 40,
          ),
          DefaultSignWithCard(
              iconData: Icons.g_translate,
              text: 'Google',
              onPressed: () {},
              isThereBackgroundColor: false),
        ],
      ),
    );
  }
}

class DefaultSignWithCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function()? onPressed;
  final bool isThereBackgroundColor;

  const DefaultSignWithCard(
      {this.isThereBackgroundColor = true,
      required this.iconData,
      required this.text,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            border: Border.all(
                color: isThereBackgroundColor ? Colors.white : Colors.black)),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: MaterialStateProperty.all(
                  !isThereBackgroundColor ? Colors.white : Colors.black),
              padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
              backgroundColor: MaterialStateProperty.all(
                  isThereBackgroundColor ? Colors.deepPurple : Colors.white),
              elevation: MaterialStateProperty.all(0)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: isThereBackgroundColor ? Colors.white : Colors.black,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                text,
                style: TextStyle(
                    color:
                        isThereBackgroundColor ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultDashLineWithTextOr extends StatelessWidget {
  const DefaultDashLineWithTextOr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(child: myDivider()),
      SizedBox(
        width: 5.0,
      ),
      Text(
        "Or",
        style: TextStyle(
          color: HexColor("#180701"),
        ),
      ),
      SizedBox(
        width: 5.0,
      ),
      Expanded(child: myDivider()),
    ]);
  }
}
