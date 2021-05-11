import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/bottom_navbar.dart';
import 'package:instagram_ui_clone/values.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          logo,
          height: 80.0,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            print('Add Post');
          },
          child: Image.asset(
            addIcon,
            height: 10.0,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Messanger');
            },
            child: Image.asset(
              messengerIcon,
              height: -10.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 80.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(6.5),
                  children: [
                    stories(profile_1),
                    stories(profile_2),
                  ],
                ),
              ),
              Divider(),
              post(context, profile_1),
              post(context, profile_2),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Container stories(story) {
    return Container(
      padding: EdgeInsets.only(left: 8.0),
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE1306C),
              Color(0xFFC13584),
              Color(0xFFF77737),
              Color(0xFFFCAF45),
              Color(0xFFFEDA77),
            ],
            begin: FractionalOffset(2, .5),
            end: FractionalOffset(0, 2.5),
          ),
          borderRadius: BorderRadius.circular(60),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(story),
        ),
      ),
    );
  }

  Container post(context, String post) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Container(
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE1306C),
                      Color(0xFFC13584),
                      Color(0xFFF77737),
                      Color(0xFFFCAF45),
                      Color(0xFFFEDA77),
                    ],
                    begin: FractionalOffset(2, .5),
                    end: FractionalOffset(0, 2.5),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage(
                    profile_1,
                  ),
                ),
              ),
            ),
            title: Text('james__f_'),
            trailing: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            height: 360,
            child: Image.asset(
              post,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.red[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  message,
                  height: 36,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  send,
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 140,
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    saved,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: FractionalOffset(2, .5),
                                end: FractionalOffset(0, 2.5),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(profile_2),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: FractionalOffset(2, .5),
                                end: FractionalOffset(0, 2.5),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(profile_1),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFFFFFF),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: FractionalOffset(2, .5),
                                end: FractionalOffset(0, 2.5),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(profile_1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 60),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Wrap(
                              children: <Widget>[
                                Text('Liked by'),
                                Text(
                                  ' james__f_',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(' and'),
                                Text(
                                  ' 30k others',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage(profile_1),
                ),
                Container(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'Add Comment',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Text('❤'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text('🙌'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            shape: BoxShape.circle),
                        child: Text('➕'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
