import 'package:flutter/material.dart';
import 'package:hona/components/place_big_card.dart';

class PlaceListPage extends StatefulWidget {
  final String title;
  final List<String> places;
  final List<String> locations;
  final List<String> prices;
  final List<String> rates;
  final List<String> descriptions;
  final List<String> pics;
  final String sev;
  const PlaceListPage({
    super.key,
    required this.title,
    required this.places,
    required this.locations,
    required this.prices,
    required this.rates,
    required this.descriptions,
    required this.pics,
    required this.sev,
  });

  @override
  State<PlaceListPage> createState() => _PlaceListPageState();
}

class _PlaceListPageState extends State<PlaceListPage> {
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
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      color: Color(0xff003263),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      for (int x = 0; x < widget.places.length; x++) ...[
                        PlaceBigCard(
                          location: widget.locations[x],
                          price: widget.prices[x],
                          place: widget.places[x],
                          rate: widget.rates[x],
                          description: widget.descriptions[x],
                          pic: widget.pics[x],
                          sev: widget.sev,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        // you can add widget here as well
                      ],
                    ],
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
