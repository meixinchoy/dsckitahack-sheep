import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:snaplist/snaplist_view.dart';

enum DonateTarget { seldrick, wwf, saveelephant}
final List<String> images = [
  "assets/sheldrick.png",
  "assets/wwf.png",
  "assets/savetheelephant.png",
];

class TestDonation extends StatefulWidget {
  @override
  _TestDonationState createState() => _TestDonationState();
}

class _TestDonationState extends State<TestDonation> {
  DonateTarget dTarget = DonateTarget.seldrick;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            top: 40,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    LineAwesomeIcons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  "Donation",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'CentraleSansRegular'),
                ),
                Center(
                  child: Image.asset(
                      images[currentIndex],
                    height: 200
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 370),
            height: 400,
            width: 400,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Radio(
                    value: DonateTarget.seldrick,
                    groupValue: dTarget,
                    onChanged: (DonateTarget value) {
                      setState(() {
                        dTarget = value;
                        currentIndex = 0;
                      });
                    },
                  ),
                  title: Text("David Sheldrick Wildlife Trust",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Kenya",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  leading: Radio(
                    value: DonateTarget.wwf,
                    groupValue: dTarget,
                    onChanged: (DonateTarget value) {
                      setState(() {
                        dTarget = value;
                        currentIndex = 1;
                      });
                    },
                  ),
                  title: Text("World Wildlife Fund",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Switzerland",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  leading: Radio(
                    value: DonateTarget.saveelephant,
                    groupValue: dTarget,
                    onChanged: (DonateTarget value) {
                      setState(() {
                        dTarget = value;
                        currentIndex = 2;
                      });
                    },
                  ),
                  title: Text("Save the Elephants",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Kenya",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Donation Amount (RM)'
                          ),
                        ),
                      ),
                    ],
                  )

                ),
                MaterialButton(
                  minWidth: 10.0,
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.redAccent,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext bc) {
                          return buildBottomModal(context);
                        });
                  },
                  child: Text(
                    "Donate",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "CentraleSansRegular",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget buildBottomModal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 320,
          child: Column(
            children: [
              Image.asset(
                "assets/CharityHand.png",
                height: 75,
              ),
              Text(
                  "Protect endangered species by donating money. "
                      "Your help means a lot to protect the welfare of the animals. ",

                  style: TextStyle(
                      fontFamily: "CentraleSansRegular",
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 2,
              ),
              Row(
                children: [
                  SizedBox(width: 50),
                  Image.asset("assets/gpay.png", height: 20),
                  SizedBox(width: 10),
                  Text("Google Pay  RM100"),
                  Expanded(
                    child: MaterialButton(onPressed: () {  },
                    child: Text("Change")),
                  )



                  // Expanded(
                  //   child: MaterialButton(child: Text("Change")),
                  // )
                ],
              ),

              MaterialButton(
                height: 40.0,
                minWidth: 320.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text(
                  "Confirm donation",
                  style: TextStyle(
                      fontFamily: "CentraleSansRegular",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => {},
                splashColor: Colors.redAccent,
              ),
            ],
          )),
    );
  }
}




