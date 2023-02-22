import 'package:flutter/material.dart';
import 'package:hona/place_list.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SevenAsCard extends StatefulWidget {
  final String title;
  final List<String> places;
  final List<String> locations;
  final List<String> prices;
  final List<String> prices2;
  final List<String> rates;
  final List<String> descriptions;
  final List<String> pics;
  final String sevenPic;
  final String sev;
  const SevenAsCard({
    super.key,
    required this.title,
    required this.places,
    required this.locations,
    required this.prices,
    required this.rates,
    required this.descriptions,
    required this.pics,
    required this.prices2,
    required this.sevenPic,
    required this.sev,
  });

  @override
  State<SevenAsCard> createState() => _SevenAsCardState();
}

class _SevenAsCardState extends State<SevenAsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNewScreen(
          context,
          screen: PlaceListPage(
            title: widget.title,
            places: widget.places,
            locations: widget.locations,
            prices: widget.prices,
            rates: widget.rates,
            descriptions: widget.descriptions,
            pics: widget.pics,
            sev: widget.sev,
          ),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(widget.sevenPic),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xff003263),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
