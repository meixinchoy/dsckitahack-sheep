import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mary the Malayan Tiger"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Column(
                  children: [
                    buildImages('assets/tiger3.jpg'),
                    buildInfoDetail('13 March 2021',
                        'In this photo, Mary the Malayan Tiger is seen playing with\n her cubs :) Thank you for your support, Mary now weighs \nat around 102kg, which is a healthy weight for female\n Malayan Tigers. Now that Marry is no longer malnourished,\n she loves to explore around the conservatory and play with\n her cubs. The center will be monitoring her for a longer\n period before releasing her into the wild :)'),
                  ],
                ),
              ),
              GestureDetector(
                child: Column(
                  children: [
                    buildImages('assets/tiger2.jpg'),
                    buildInfoDetail('2 February 2021',
                        'Thanks to your help, we are able to provide Mary the Malayan\n Tiger with the appropriate treatments needed. We are happy\n to say that Mary is slowly gaining back her weight! As of\n now, she weighs around 80kg, and she is slowly showing\n interest to interact with the other tigers too!'),
                  ],
                ),
              ),
              GestureDetector(
                child: Column(
                  children: [
                    buildImages('assets/tiger4.jpg'),
                    buildInfoDetail('6 January 2021',
                        'Thank you for adopting one of our Malayan Tigers. Weighing\n at 67.4kg, Mary is malnourished and will be undergoing\n treatment soon. Mary is very grateful to have your support\n in her journey to recovery :)'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImages(String imglink) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(imglink), fit: BoxFit.cover))),
    );
  }

  Widget buildInfoDetail(String detail1, detail2) {
    return Padding(
      padding:
          EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                detail1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    detail2,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontFamily: 'Montserrat',
                      fontSize: 11.0,
                    ),
                  ),
                  SizedBox(width: 4.0),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Al the Borneo Pygmy Elephant"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Column(
                  children: [
                    buildImages('assets/elepant2.jpg'),
                    buildInfoDetail('27 February 2021',
                        'We are happy to say that Al is recovering at a very good rate!\n Although Al has still not regained his full range of mobility\n yet, he is able to walk slowly under supervision. Here you\n see him and his friends hanging out at his favourite spot! '),
                  ],
                ),
              ),
              GestureDetector(
                child: Column(
                  children: [
                    buildImages('assets/elepant1.jpg'),
                    buildInfoDetail('21 January 2021',
                        'Thank you for adopting one of our Borneo Pygmy Elephants.\n This is Al, he was found injured with a fractured foot. \nCurrently, he is being treated at the Kuala Gandah Elephan\n Centre. He is happy to have your support in such difficult\n times.'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImages(String imglink) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(imglink), fit: BoxFit.cover))),
    );
  }

  Widget buildInfoDetail(String detail1, detail2) {
    return Padding(
      padding:
          EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                detail1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    detail2,
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  ),
                  SizedBox(width: 4.0),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
