import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://scontent.fbkk17-1.fna.fbcdn.net/v/t1.6435-9/97357756_248685779785319_5795842303327207424_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=19026a&_nc_eui2=AeGancgz8zi9zakxX0KogNCAuKxfHUbwfGS4rF8dRvB8ZJNHISuX91feu9_bgzmGbPRrzUvTpQMy3TY_rTY7jXri&_nc_ohc=cNVDdegeZGsAX9qLKTi&_nc_ht=scontent.fbkk17-1.fna&oh=c3186e0d9789407a761a1333c1193f63&oe=60FCCA3A'),
            ),
            Positioned(
              bottom: -40.0,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://scontent.fbkk17-1.fna.fbcdn.net/v/t1.6435-9/97764756_248685576452006_7798218389582774272_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=174925&_nc_eui2=AeECMiTCaySA47fYAgeh3U06Wyf1jpnQ-PhbJ_WOmdD4-DeGFPn-2mYZwsxH2pBbPWP-3NOcM1ApOMaH7AQhzF3a&_nc_ohc=UjKENwIIhz0AX9DWPwW&_nc_ht=scontent.fbkk17-1.fna&oh=9ada6d586a3c03de26016d1f87fec4de&oe=60FD6D55'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ListTile(
          title: Center(
              child: Text(
            'Pongphop Saksrisakul',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600),
          )),
          subtitle: Center(
              child: Text(
            'Studen of Nakornpathom Vocational Colloge',
            style: TextStyle(fontFamily: 'Poppins'),
          )),
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          label: Text(
            'Contact Me',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        ListTile(
          title: Text('About Me'),
          subtitle: Text(
              '    Hi my name is Pongphop. You can call me Pong. I am 21 years old. I am study computer business. I am from Thailand.'),
        )
      ],
    );
  }
}
