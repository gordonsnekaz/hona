import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DescriptionPage extends StatefulWidget {
  final String place;
  final String rate;
  final String location;
  final String price;
  final String description;
  final String pic;
  final String sev;
  const DescriptionPage({
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
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/vidz.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  height: 500,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.pic),
                      colorFilter: ColorFilter.mode(
                        const Color(0xff828282).withOpacity(1),
                        BlendMode.modulate,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Flexible(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff003263),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.place,
                              style: const TextStyle(
                                color: Color(0xff003263),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffF2E6BC),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    color: Color(0xffC39B0D),
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    widget.rate,
                                    style: const TextStyle(
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xffEB5757),
                              size: 15,
                            ),
                            const SizedBox(
                              width: 4,
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
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Description",
                              style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        widget.place == "Victoria Falls"
                            ? Row(
                                children: [
                                  Text(
                                    widget.description,
                                    style: const TextStyle(
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            : Text(
                                widget.description,
                                style: const TextStyle(
                                  color: Color(0xff828282),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                        const SizedBox(
                          height: 24,
                        ),
                        widget.place == "Victoria Falls" ||
                                widget.place == "Nyanga Mountains"
                            ? const Text("")
                            : Row(
                                children: const [
                                  Text(
                                    "Prices",
                                    style: TextStyle(
                                      color: Color(0xff4F4F4F),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 8,
                        ),
                        widget.place == "Victoria Falls" ||
                                widget.place == "Nyanga Mountains"
                            ? const Text("")
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.price,
                                    style: const TextStyle(
                                      color: Color(0xff003263),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Text(
                                    "",
                                    style: TextStyle(
                                      color: Color(0xff828282),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "",
                                        style: TextStyle(
                                          color: Color(0xffBEBEBE),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 8,
                        ),
                        widget.sev == "Attractions" &&
                                widget.place == "Victoria Falls"
                            ? Center(
                                child: _controller.value.isInitialized
                                    ? AspectRatio(
                                        aspectRatio: 2 / 1,
                                        child: VideoPlayer(_controller),
                                      )
                                    : Container(
                                        color: Colors.red,
                                        width: 5,
                                        height: 5,
                                      ),
                              )
                            : const Text(""),
                        const SizedBox(
                          height: 8,
                        ),
                        widget.sev == "Attractions" &&
                                widget.place == "Victoria Falls"
                            ? FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    _controller.value.isPlaying
                                        ? _controller.pause()
                                        : _controller.play();
                                  });
                                },
                                child: Icon(
                                  _controller.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                              )
                            : const Text(""),
                      ],
                    ),
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
