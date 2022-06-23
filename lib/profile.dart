import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [Colors.pink, Colors.deepPurpleAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: const [0.1, 10.0],
                    tileMode: TileMode.mirror,
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -155.0),
              child:Column(
                children: [
                  Text('PORNPAN SITTHINAN',
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Tahoma',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Developer',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Colors.yellowAccent,
                      fontFamily: 'Tahoma',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'images/download.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Column(
                      children: const [
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.phone),
                            title: Text('0942745555'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(Icons.mail),
                            title: Text('pornpan.s@kkumail.com'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/counter', arguments: 5);
                        },
                        child: Text('Counter:5')),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/counter', arguments: 10);
                          },
                          child: Text('Counter:10'))
                  ),
                ],
              ),
            )
          ],
      ),
    );
  }
}
