import 'package:flutter/material.dart';

class RoundedRectButton extends StatelessWidget {
  final String title;
  final List<Color> gradient;
  final bool isEndIconVisible;
  final Function func;

  RoundedRectButton(
      this.title, this.gradient, this.isEndIconVisible, this.func);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            GestureDetector(
                onTap: func,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(mContext).size.width / 1.7,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    gradient: LinearGradient(
                        colors: gradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                ))
          ],
        ),
      );
    });
  }
}
