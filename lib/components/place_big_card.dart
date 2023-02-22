import 'package:flutter/material.dart';
import 'package:hona/description_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PlaceBigCard extends StatefulWidget {
  final String place;
  final String rate;
  final String location;
  final String price;
  final String description;
  final String pic;
  final String sev;
  const PlaceBigCard({
    super.key,
    required this.place,
    required this.rate,
    required this.location,
    required this.price,
    required this.pic,
    required this.description,
    required this.sev,
  });

  @override
  State<PlaceBigCard> createState() => _PlaceBigCardState();
}

class _PlaceBigCardState extends State<PlaceBigCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        pushNewScreen(
          context,
          screen: DescriptionPage(
            location: widget.location,
            price: widget.price,
            place: widget.place,
            rate: widget.rate,
            description: widget.description,
            pic: widget.pic,
            sev: widget.sev,
          ),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        )
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(widget.pic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.place,
                          style: const TextStyle(
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xffBEBEBE),
                            size: 15,
                          ),
                          Text(
                            widget.location,
                            style: const TextStyle(
                              color: Color(0xffBEBEBE),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Color(0xffBEBEBE),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate,
                            color: Color(0xffC39B0D),
                            size: 15,
                          ),
                          Text(
                            widget.rate,
                            style: const TextStyle(
                              color: Color(0xffBEBEBE),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      widget.sev == "Accomodations"
                          ? Row(
                              children: const [
                                Text(
                                  "\$",
                                  style: TextStyle(
                                    color: Color(0xff003263),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "/person",
                                  style: TextStyle(
                                    color: Color(0xffBEBEBE),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Text(
                                  "\$${widget.price}",
                                  style: const TextStyle(
                                    color: Color(0xff003263),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  "/person",
                                  style: TextStyle(
                                    color: Color(0xffBEBEBE),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
