import 'package:flutter/material.dart';
import 'package:hona/components/seven_as_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/hona_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(),
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: const Color(0xff003263),
                      borderRadius: BorderRadius.circular(0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.power_settings_new_outlined,
                        color: Color(0xffffffff),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "hi, ",
                          style: TextStyle(
                            color: Color(0xff003263),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "welcome to hona",
                          style: TextStyle(
                            color: Color(0xffC39B0D),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 12.0,
                                top: 3,
                                bottom: 3,
                              ),
                              child: TextField(
                                controller: _searchText,
                                decoration: const InputDecoration(
                                  fillColor: Color(0xff828282),
                                  border: InputBorder.none,
                                  hintText: 'search destination',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Most visited places",
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          //small cards
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Image(
                                        image: AssetImage('assets/hona_bg.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Chinhoyi caves",
                                      style: TextStyle(
                                        color: Color(0xff828282),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: const [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    SevenAsCard(
                                      title: "Attractions",
                                      places: [
                                        "Nyanga Mountains",
                                        "Victoria Falls"
                                      ],
                                      locations: [
                                        'Nyanga, ',
                                        'Victoria Falls, 328 parkway',
                                      ],
                                      prices: [
                                        '230',
                                        '120',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare. \n\n\nAttractions\nNyangombe Falls \$5\n\World\'s view \$5\nMutazi falls',
                                        'Attractions  \nFalls\nCrocodile Farm - \$10 per head \nRainforest \$7 \n',
                                      ],
                                      pics: [
                                        'assets/mountains.jpg',
                                        'assets/bg1.jpg'
                                      ],
                                      prices2: [
                                        '250',
                                        '160',
                                      ],
                                      sevenPic: "assets/mountains.jpg",
                                      sev: "Attractions",
                                    ),
                                    SevenAsCard(
                                      title: "Accomodations",
                                      places: [
                                        "Mount Clawre",
                                        "CUT Hotel",
                                      ],
                                      locations: [
                                        'Mount Clawre',
                                        "Chinhoyi, Hr drive",
                                      ],
                                      prices: [
                                        'Single room - \$115 \nDouble room - \$130 \nExecutive - \$200',
                                        'Single room - \$75 \nDouble room - \$110 \nExecutive - \$130',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare.',
                                        'Chinhoyi University of Technology Hotel is found along the Harare – Chirundu highway. The Hotel is a one stop shop where you find wireless internet, visa facility, a business centre for all clerical requirements, beauty parlor and a gift shop, giving you all the requisites of a modern hotel.',
                                      ],
                                      pics: [
                                        'assets/bed.jpg',
                                        'assets/hotel.jpg'
                                      ],
                                      prices2: [
                                        '130',
                                        '100',
                                      ],
                                      sevenPic: "assets/bed.jpg",
                                      sev: "Accomodations",
                                    ),
                                    SevenAsCard(
                                      title: "Amenities",
                                      places: [
                                        "Nyanga Mountains",
                                        "Elephant Hills",
                                      ],
                                      locations: [
                                        'Nyanga',
                                        'Elephant hills',
                                      ],
                                      prices: [
                                        '',
                                        '',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare. \n\nAmenities \nBath soap \nWifi \ntooth brush\nMineral water\nBath Robs \nBathing towel \nShaving sticks \nLotions \nSaf locks',
                                        'This inviting hotel is perfectly positioned to explore the scenic beauty of Nyanga and savour the crisp mountain air.\n\nAmenities \nBath soap \nWifi \ntooth brush\nMineral water\nBath Robs \nBathing towel \nShaving sticks \nLotions \nSaf locks',
                                      ],
                                      pics: [
                                        'assets/pic6.jpg',
                                        'assets/pic5.jpg'
                                      ],
                                      prices2: [
                                        '',
                                        '',
                                      ],
                                      sevenPic: "assets/pic5.jpg",
                                      sev: "Amenities",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    SevenAsCard(
                                      title: "Activities",
                                      places: [
                                        "Nyanga Mountains",
                                        "Victoria Falls"
                                      ],
                                      locations: [
                                        'Nyanga, ',
                                        'Victoria Falls, 328 parkway',
                                      ],
                                      prices: [
                                        '230',
                                        '120',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare. \n\n\nAvailable packages\nNyangani mountains \$5\n\Nyangomi Falls \$5\nMutazi falls(Zip line) - \$80\nMutazi falls(Sky walking) - \$40\n',
                                        'Available activities  \nBungee jumping - \$90 \nBoat cruising - \$55 per head \nElephant experience \$60 \nCrocodile Farm \$10',
                                      ],
                                      pics: [
                                        'assets/pic4.jpg',
                                        'assets/pic3.jpg'
                                      ],
                                      prices2: [
                                        '250',
                                        '160',
                                      ],
                                      sevenPic: "assets/pic3.jpg",
                                      sev: "Activities",
                                    ),
                                    SevenAsCard(
                                      title: "Accessibility",
                                      places: [
                                        "Nyanga Mountains",
                                        "Victoria Falls"
                                      ],
                                      locations: [
                                        'Nyanga',
                                        'Victoria Falls, 328 parkway',
                                      ],
                                      prices: [
                                        '',
                                        '',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare. \n\nAccessibility \nRoad',
                                        '\n\nAccessibility \nRoad\nAir',
                                      ],
                                      pics: [
                                        'assets/pic2.jpg',
                                        'assets/pic1.jpg'
                                      ],
                                      prices2: [
                                        '',
                                        '',
                                      ],
                                      sevenPic: "assets/pic2.jpg",
                                      sev: "Accessibility",
                                    ),
                                    SevenAsCard(
                                      title: "Ancillary",
                                      places: [
                                        "Nyanga Mountains",
                                        "Victoria Falls"
                                      ],
                                      locations: [
                                        'Nyanga',
                                        'Victoria Falls, 328 parkway',
                                      ],
                                      prices: [
                                        '',
                                        '',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare. \n\nAcillary \nNyanga General Hospital \nZB Bank',
                                        '\n\nAncillary \nZB , CBZ, FBC, Steward Banks \nSurgeries \nTM and OK \n3 Monkeys Restaurant\nBoma',
                                      ],
                                      pics: [
                                        'assets/zb.jpg',
                                        'assets/vicAncillary.jpg'
                                      ],
                                      prices2: [
                                        '',
                                        '',
                                      ],
                                      sevenPic: "assets/zb.jpg",
                                      sev: "Ancillary",
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    SevenAsCard(
                                      title: "Available",
                                      places: [
                                        "Elephant Hills Hotel",
                                        "Troutberk"
                                      ],
                                      locations: [
                                        'Elephant Hills Hotel',
                                        'Troutberk',
                                      ],
                                      prices: [
                                        '\$120 per night',
                                        '\$120 per night',
                                      ],
                                      rates: [
                                        '4.7',
                                        '5.0',
                                      ],
                                      descriptions: [
                                        'Quality accommodation with excellent views across the Zambezi River. · The Elephant Hills Hotel is the only resort in Vic Falls with a golf course.\n\nAvailable packages \nBed \nBreakfast\nSwimming\nComplementary bus\nGolf Tennis, Table Tennis\nGame view\nFruit basket with sparkling',
                                        'This inviting hotel is perfectly positioned to explore the scenic beauty of Nyanga and savour the crisp mountain air.\n\nAvailable packages \nBed \nBreakfast\nSwimming\nBoat Cruisiing\nQuad Biking',
                                      ],
                                      pics: [
                                        'assets/bed.jpg',
                                        'assets/hotel.jpg'
                                      ],
                                      prices2: [
                                        '5',
                                        '3',
                                      ],
                                      sevenPic: "assets/hotel.jpg",
                                      sev: "Available",
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
