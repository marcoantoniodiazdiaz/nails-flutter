import 'package:andrea/src/design/design_colors.dart';
import 'package:andrea/src/design/design_texts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_Image(), _Title(), _Days()],
          ),
        ),
      ),
    );
  }
}

class _Days extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              _ItemDay(),
              SizedBox(width: 10),
              _ItemDay(),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              _ItemDay(),
              SizedBox(width: 10),
              _ItemDay(),
            ],
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

class _ItemDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/img/item1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.solidClock,
                        size: 20,
                        color: DesignColors.items,
                      ),
                      DesignText(
                        "10:00 A.M.",
                        color: DesignColors.items,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DesignText(
                        "Estado: ",
                        color: DesignColors.items,
                      ),
                      DesignText(
                        "Reservado",
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  DesignText(
                    "Susana Guadalupe Diaz",
                    color: DesignColors.items,
                    fontSize: 12,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 17,
                        color: DesignColors.items,
                      ),
                      DesignText(
                        "3315856646",
                        color: DesignColors.items,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: DesignText(
        "8 de abril del 2021",
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/img/main.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                DesignText(
                  "Ocotlán, Jalisco",
                  fontSize: 15,
                  color: Colors.white,
                ),
                DesignText(
                  "Andrea's Nails",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            spreadRadius: 3,
                            blurRadius: 3),
                      ],
                    ),
                    child: Icon(FontAwesomeIcons.cog),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            spreadRadius: 3,
                            blurRadius: 3),
                      ],
                    ),
                    child: Icon(FontAwesomeIcons.plus),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
