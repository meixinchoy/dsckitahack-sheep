import 'package:flutter/material.dart';
import 'package:snaplist/snaplist.dart';

class AdoptPage extends StatelessWidget {
  final List<String> images = [
    "assets/malayantiger.png",
    "assets/borneoelephant.jpg",
    "assets/tapir.png",
    "assets/blackshrew.png",
    "assets/cheetah.png",
    "assets/Westernlowlandgorilla.png"
  ];
  final List<String> animalName = [
    "Malayan Tiger",
    "Borneo Pygmy Elephant",
    "Tapir",
    "Black Shrew",
    "Cheetah",
    "Western Low Land Gorilla"
  ];

  @override
  Widget build(BuildContext context) {
    final Size cardSize = Size(310.0, 650.0);
    return SnapList(
      padding: EdgeInsets.symmetric(
          horizontal: (MediaQuery.of(context).size.width - cardSize.width) / 2),
      sizeProvider: (index, data) => cardSize,
      separatorProvider: (index, data) => Size(20.0, 20.0),
      positionUpdate: (int index) {},
      builder: (context, index, data) {
        return ClipRRect(
          borderRadius: new BorderRadius.circular(30.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Image(
                    height: 511,
                    image: AssetImage(images[index]),
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
              Positioned(
                height: 140,
                width: 550,
                bottom: 0,
                child: Container(color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),
              Positioned(
                bottom: 17,
                child: MaterialButton(
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
                    "Adopt",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "CentraleSansRegular",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                child: Container(
                  child: Text(
                    animalName[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "CentraleSansRegular",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      count: images.length,
    );
  }

  Padding buildBottomModal(BuildContext context) {
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
                  "Adopt and help endangered species by donating RM100 at monthly basis. "
                  "Status of virtually adopted animal will be updated monthly.",
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
                ],
              ),
              MaterialButton(
                height: 40.0,
                minWidth: 320.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text(
                  "Confirm subscription",
                  style: TextStyle(
                      fontFamily: "CentraleSansRegular",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () => {},
                splashColor: Colors.redAccent,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                    "Your subscription will renew automatically every month. "
                    "You can cancel it any time.",
                    style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w100),
                    textAlign: TextAlign.center),
              ),
            ],
          )),
    );
  }
}
