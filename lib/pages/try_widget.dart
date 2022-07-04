import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TryWidget extends StatefulWidget {
  const TryWidget({Key? key}) : super(key: key);

  @override
  State<TryWidget> createState() => _TryWidgetState();
}

class _TryWidgetState extends State<TryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500.h,
              width: double.infinity,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  itemCount: 56,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                     child: Text(
                        "BOX",
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
