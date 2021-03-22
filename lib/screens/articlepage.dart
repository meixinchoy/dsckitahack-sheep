import 'package:flutter/material.dart';
import 'package:easy_web_view/easy_web_view.dart';

class Article1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Article"),
        ),
        body: EasyWebView(
      src: "https://www.endangered.org/15-ways-to-help-protect-endangered-species/",
      isHtml: false, // Use Html syntax
      isMarkdown: false, // Use markdown syntax
      convertToWidgets: false,
      onLoaded: () {}, // Try to convert to flutter widgets
      // width: 100,
      // height: 100,
    ));
  }
}

class Article2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EasyWebView(
      src: "https://www.smithsonianmag.com/science-nature/race-stop-africas-elephant-poachers-180951853/",
      isHtml: false, // Use Html syntax
      isMarkdown: false, // Use markdown syntax
      convertToWidgets: false,
      onLoaded: () {}, // Try to convert to flutter widgets
      // width: 100,
      // height: 100,
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

// class Article extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WebView(
//       initialUrl: 'https://flutter.io',
//       javascriptMode: JavascriptMode.unrestricted,
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Article extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//     Center(child: Container(
//       margin: EdgeInsets.only(top: 100),
//       child: Column(

//         children: <Widget>[

//           Text(
//             "something.xyz",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     ),);
//   }
// }
