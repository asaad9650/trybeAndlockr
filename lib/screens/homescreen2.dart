import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  HomeScreen2State createState() => HomeScreen2State();
}

class HomeScreen2State extends State<HomeScreen2> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyLayout(),
    );
  }

  Widget bodyLayout() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: generateList()),
      ],
    );
  }

  Widget generateList() {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: stories(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/myimage.jpg"),
                              ),
                            ),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            "i.saadamir",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.asset(
                    "assets/images/road.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new IconButton(
                            icon: new Icon(
                              isPressed ? Icons.favorite : Icons.favorite,
                            ),
                            color: isPressed ? Colors.red : Colors.grey[300],
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                          new SizedBox(
                            width: 0.0,
                          ),
                          new Icon(
                            Icons.comment,
                            color: Colors.grey[300],
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            Icons.send,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      new Icon(
                        Icons.bookmark,
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by You and 1,001 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 5.0, 0.0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/myimage.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("1 Day Ago",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                )
              ],
            ),
    );
  }

  Widget stories() {
    final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 2, left: 8.0),
          child: Text(
            "Stories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0, right: 8),
          child: new Row(
            children: <Widget>[
              new Icon(Icons.play_arrow),
              new Text("Watch All",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    );

    final stories = Expanded(
      child: new Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              new Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage("assets/images/myimage.jpg")),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
              index == 0
                  ? Positioned(
                      right: 10.0,
                      child: new CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: new Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ))
                  : new Container()
            ],
          ),
        ),
      ),
    );

    return new Container(
      margin: const EdgeInsets.all(0.0),
      child: new Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
