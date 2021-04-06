import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import '../../../constants.dart';
import '../constants.dart';

class NextPageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextPageButton({
    @required this.onPressed,
  }) : assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.all(PaddingM),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: White,
      child: Icon(
        Icons.arrow_forward,
        color: DarkBlue,
        size: 32.0,
      ),
      onPressed: onPressed,
    );
  }
}
