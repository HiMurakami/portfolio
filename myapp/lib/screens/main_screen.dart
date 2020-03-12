import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 120.0,
              floating: true,
              pinned: true,
              snap: true,
              actionsIconTheme: IconThemeData(),
              flexibleSpace: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/tree.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "My Portfolio",
                        style: TextStyle(fontSize: 36.0, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SliverPadding(
              padding: new EdgeInsets.all(16.0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate([
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(EvaIcons.person),
                          text: "About"),
                      new Tab(
                          icon: new Icon(EvaIcons.image),
                          text: "Work"),
                      new Tab(
                          icon: new Icon(EvaIcons.fileText),
                          text: "Article"),
                    ],
                  ),
                ]),
              ),
            ),
          ];
        },
        body: TabBarView(children: [
          Column(
            children: <Widget>[
              Expanded(child: bodyParts("© Allrights Reserved")),
//              Text("© Allrights Reserved")
            ],
          ),
          Text("お気に入りの撮影写真を貼る予定", textAlign: TextAlign.center,),
          Text("有能な記事を書く予定", textAlign: TextAlign.center,),
        ]),
      ),
    ));
  }

  Widget bodyParts(String footter) {
    return Center(
      child: Column(
        children: <Widget>[
          myProfile(),
//          Text("Sample text"),
          Text(footter),
        ],
      ),
    );
  }

  myProfile() {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 120.0,
              width: 120.0,
              child: ClipRRect(borderRadius: BorderRadius.circular(30.0),child: Image.asset("assets/images/face.png")),
          ),
          Text("むらかみ", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
          Column(
            children: <Widget>[
              Text(
                  "現職は某メーカの基板・回路設計。大学院で情報工学を修了し今に至る。"
                  "RaspberryPi, Arduinoなどを媒体にFlutter, Pytonを独学中。"
                  "趣味は写真撮影。",
//                  textAlign: TextAlign.center,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(EvaIcons.twitter),
                        tooltip: "Twitter",
                        onPressed: () => print("tap"),
                      ),
                      Text("@nbk01409")
                    ],
                  ),
                  SizedBox(width:35.0),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(EvaIcons.github),
                        tooltip: "github",
                        onPressed: () => print("tap"),
                      ),
                      Text("HiMurakami")
                    ],
                  ),
                  SizedBox(width:35.0),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(EvaIcons.email),
                        tooltip: "Email",
                        onPressed: () => print("tap"),
                      ),
                      Text("nbk.01409\n@gmail.com", textAlign: TextAlign.center,)
                    ],
                  ),
                ],
              ),
              Divider(),
              Text(
                "History",
                textAlign: TextAlign.center,
              ),
              Text(
                    "2017.03: 大学院 情報工学修了\n"
                    "2017.04: 某メーカに就職\n"
                    "2020.01: Flutterを始める",
//                  textAlign: TextAlign.center,
              ),
              Divider(),

            ],
          ),
        ],

      ),
    );
  }
}

