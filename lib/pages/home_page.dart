import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsdd/utils/file_path.dart';
import 'package:nsdd/widgets/myCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String userName = "Saqib";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300.h,
            width: 375.w,
            child: Stack(
              children: [
                Positioned(
                  top: 0.h,
                  left: 0.w,
                  right: 0.w,
                  child: SvgPicture.asset(
                    FilePath.homePageArt,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 50.h,
                    left: 20.w,
                    right: 20.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_rounded,
                              size: 25.h.w,
                              color: Colors.white,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Hi $userName",
                                style: GoogleFonts.redHatDisplay(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              "Welcome back!",
                              style: GoogleFonts.redHatDisplay(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(
                    top: 160.h,
                    right: 20.w,
                    left: 20.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Offered Courses",
                              style: GoogleFonts.redHatDisplay(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("Offered Programs"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "16",
                              style: GoogleFonts.redHatDisplay(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text("04")
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    top: 260.h,
                    left: 0.w,
                    right: 0.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Programs",
                          style: GoogleFonts.redHatDisplay(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 225.h,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: ((context, index) => const MyCard())),
          )
        ],
      ),
    );
  }
}
