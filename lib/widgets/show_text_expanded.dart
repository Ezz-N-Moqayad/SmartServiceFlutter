import 'package:flutter/cupertino.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';

// ignore: must_be_immutable
class ShowTextExp extends StatelessWidget {
  FontWeight fontWeight;
  String text;
  Color color;
  double size;

  // ignore: use_key_in_widget_constructors
  ShowTextExp(this.text, this.color, this.size,
      {this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            // AppLocalizations.of(context)!.whoUs,
            style: TextStyle(
                color: color,
                fontFamily: SharedPrefController().lanCode == 'ar'
                    ? 'Tajawal'
                    : 'Roboto',
                fontWeight: fontWeight,
                fontSize: size),
          ),
        ),
      ],
    );
  }
}
