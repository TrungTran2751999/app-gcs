import 'package:flutter/cupertino.dart';

class BoLoc extends StatefulWidget {
  const BoLoc({super.key});

  @override
  State<BoLoc> createState() => _BoLocState();
}

class _BoLocState extends State<BoLoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: CupertinoColors.black.withOpacity(0.5),
    );
  }
}
