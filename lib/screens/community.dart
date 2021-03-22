import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'articlepage.dart';

class News {
  String info;
  String image;

  News(this.info, this.image);
}

// class Community extends StatelessWidget {
//   // This widget is the root of your application.

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Game  newsletter',
//         theme: ThemeData(
//           primarySwatch: Colors.grey,
//           brightness: Brightness.light, // default value
//         ),
//         home: HomePage());
//   }
// }

class Community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<News> news = [
      News("15 Actions to Protect Endangered Species", "assets/article3.jpg"),
      News("Stopping Poaching", "assets/article2.jpg"),
      News("The Race to Stop Africa’s Elephant Poachers", "assets/article.jpg"),
    ];

    return Theme(
      data: Theme.of(context).copyWith(
        // override textfield's icon color when selected
        primaryColor: Colors.white,
      ),
      child: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: AssetImage('assets/image/back.jpg'),
                alignment: Alignment(0, 10.0),
                //  colorFilter: ColorFilter.mode(Colors.deepOrangeAccent, BlendMode.darken),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  expandedHeight: 120.0,
                  pinned: false,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    titlePadding: EdgeInsets.all(0.0),
                    title: Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomLeft,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("Community blogs",
                                softWrap: true,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontFamily: "Calibre-Semibold",
                                  letterSpacing: 1.5,
                                )),
                          ),
                        ]),
                  ),
                  actions: <Widget>[],
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                SliverList(
                  ///Use SliverChildListDelegate and provide a list
                  ///of widgets if the count is limited
                  ///
                  ///Lazy building of list
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      /// To convert this infinite list to a list with "n" no of items,
                      /// uncomment the following line:
                      if (index > news.length - 1) return null;

                      ///
                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Article1())),
                        child: listItem(news.elementAt(index).info,
                            news.elementAt(index).image, context),
                      );
                    },

                    /// Set childCount to limit no.of items
                    childCount: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget listItem(String title, String image, var context) => Container(
      color: Colors.white.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "$title",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              alignment: Alignment(0.0, 0),
            ),
          )
        ],
      ),
    );
