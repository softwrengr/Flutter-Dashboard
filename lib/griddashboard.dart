
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "News",
      subtitle: "March, Wednesday",
      img: "assets/calendar.png");

  Items item2 = new Items(
    title: "Gallery",
    subtitle: "See more",
    img: "assets/food.png",
  );
  Items item3 = new Items(
    title: "Events",
    subtitle: "Aldar event",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Donate",
    subtitle: "Help other",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "Login",
    subtitle: "login to see more",
    img: "assets/login.png",
  );
  Items item6 = new Items(
    title: "Membership",
    subtitle: "Register with us",
    img: "assets/membership.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}
