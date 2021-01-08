import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Eupori',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 140,
                  height: 5,
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      }
                    },
                    text: 'https://github.com/eupori',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    linkStyle: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '프로필 수정',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black26,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '내가 찜한 콘텐츠',
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          SizedBox(
                            width: 165,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black26,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '앱 설정',
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          SizedBox(
                            width: 225,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black26,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '고객 센터',
                            style: TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          SizedBox(
                            width: 210,
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
