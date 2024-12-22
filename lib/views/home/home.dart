import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftui/model/nftmodel.dart';
import 'package:nftui/views/home/viewnft.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabList = ['All', 'Trending', 'Art Work', 'Collectible'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: SvgPicture.asset(
                          'assets/ethereum.svg',
                          width: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('100.60',
                          style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/4.png'),
                      radius: 30,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Nft \nMarketPlace🔥',
                style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          border: InputBorder.none,
                          hintText: 'Search Nft..',
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[900]),
                          onPressed: () {},
                          child: Text(tabList[index],
                              style: GoogleFonts.quicksand(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 350,
              //   width: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: getNft.length,
                  itemBuilder: (context, index) {
                    final data = getNft[index];
                    return Stack(
                      children: [
                        Hero(
                          tag: data,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color(0xffBDBDBD), width: 3),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                data.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, right: 5, top: 20),
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50)),
                          child: FadeIn(
                            duration: Duration(seconds: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      child: SvgPicture.asset(
                                        'assets/ethereum.svg',
                                        width: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data.name,
                                        style: GoogleFonts.quicksand(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                                sigmaX: 10.0, sigmaY: 10.0),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                  color: Colors.white24,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Column(children: [
                                                Text('Current Price',
                                                    style:
                                                        GoogleFonts.quicksand(
                                                      color:
                                                          const Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                      fontSize: 16,
                                                    )),
                                                Text('${data.price} ETH',
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                              ]),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 60,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Center(
                                            child: IconButton(
                                                onPressed: () {
                                                  // Navigator.pushNamed(
                                                  //     context, '/view',
                                                  //     arguments: {
                                                  //       'tag': data,
                                                  //       'img': data.img,
                                                  //       'name': data.name,
                                                  //       'price': data.price,
                                                  //       'describe':
                                                  //           data.description
                                                  //     });
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ViewPage(
                                                                  frompage:
                                                                      data)));
                                                },
                                                icon: const Icon(Icons
                                                    .arrow_forward_outlined)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
