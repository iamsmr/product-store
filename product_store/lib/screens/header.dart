import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final String image;
  final bool isDashboard;

  const HeaderBar(
      {Key key, this.icon, this.onPressed, this.image, this.isDashboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isDashboard
            ? Container(
                height: 20,
                width: 20,
                child: Image.asset('assets/images/menu.png'),
              )
            : IconButton(
                icon: Icon(icon),
                onPressed: onPressed,
              ),
        Spacer(),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff3D52FE).withOpacity(.2),
                Color(0xff3D52FE),
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            '4',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
