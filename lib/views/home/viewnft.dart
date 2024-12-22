import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftui/model/nftmodel.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ViewPage extends StatefulWidget {
  final NftModel frompage;
  const ViewPage({super.key, required this.frompage});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 55,
        width: 250,
        child: SlideAction(
          outerColor: Colors.white,
          text: 'Place Bid',
          innerColor: Colors.black,
          sliderButtonIcon: SvgPicture.asset(
            'assets/ethereum.svg', color: Colors.white,
            width: 30,
            // color: Colors.white,
          ),
          textStyle: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          onSubmit: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xff010101),
      body: SafeArea(
        child: ListView(
          children: [
            Hero(
                tag: widget.frompage,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.frompage.img))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ))),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.frompage.name,
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: SvgPicture.asset(
                      'assets/ethereum.svg',
                      width: 30,
                      // color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('${widget.frompage.price} ETH',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(widget.frompage.description,
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
