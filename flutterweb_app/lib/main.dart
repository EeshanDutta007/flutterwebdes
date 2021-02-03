import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Image.asset('img.png'),
                ),
              ),
              Spacer(),
              DefaultButton(
                text: 'Explore',
                press: () {},
              ),
              DefaultButton(
                text: 'Admissions',
                press: () {},
              ),
              DefaultButton(
                text: 'Resources',
                press: () {},
              ),
              DefaultButton(
                text: 'Blogs',
                press: () {},
              ),
              SpecButton(
                text: 'Login',
                press: () {},
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          Text(
            'EDUCATION TAB',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              fontSize: 45,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Scroll to select',
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
          Divider(
            color: Colors.black38,
            thickness: 0.1,
            indent: 200,
            endIndent: 200,
          ),
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.7,
              height: 20.0,
              enlargeCenterPage: true,
            ),
            items: ['A', 'B', 'C', 'D', 'E'].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: 145,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_left_sharp),
                          Center(
                              child: Text(
                            'Engineering $i',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent),
                          )),
                          Icon(Icons.arrow_right_sharp),
                        ],
                      ));
                },
              );
            }).toList(),
          ),
          Divider(
            color: Colors.black38,
            thickness: 0.1,
            indent: 200,
            endIndent: 200,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    elevation: 3,
                    child: Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'PATHWAYS',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text('1 Of 3', style: TextStyle(
                              color: Colors.blueAccent,
                            ),),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text(
                                'B.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                'M.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 45.0),
                              child: Text(
                                'Ph.D.',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                              child:
                              SpecButton(text: "Continue", press: () {})),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'PATHWAYS',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text('2 Of 3', style: TextStyle(
                              color: Colors.blueAccent,
                            ),),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text(
                                'B.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                'M.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 45.0),
                              child: Text(
                                'Ph.D.',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                              child:
                              SpecButton(text: "Continue", press: () {})),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    elevation: 3,
                    child: Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'PATHWAYS',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text('3 Of 3', style: TextStyle(
                              color: Colors.blueAccent,
                            ),),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Text(
                                'B.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                'M.Com',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 45.0),
                              child: Text(
                                'Ph.D.',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                          Center(
                              child:
                                  SpecButton(text: "Continue", press: () {})),
                        ],
                      ),
                    ),
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

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SpecButton extends StatelessWidget {
  final String text;
  final Function press;

  const SpecButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        color: Colors.blueAccent,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


