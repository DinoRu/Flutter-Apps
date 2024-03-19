import 'package:dots_indicator/dots_indicator.dart';
import 'package:fedesie_client_app/test_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeTestPage extends StatelessWidget {
  const HomeTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('FEDESIEE',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Colors.orange,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Container(
                    margin: EdgeInsets.all(10),
                    height: 200.h,
                    width: 375.w,
                    child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network('https://images.unsplash.com/photo-1607270788732-55d2cdb8f52a?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fit: BoxFit.fill,)),
                        );
                      }),
                    ),
                    Positioned(
                        bottom: 30.h,
                        left: 0,
                        right: 0,
                        child: DotsIndicator(
                          dotsCount: 3,
                          mainAxisAlignment: MainAxisAlignment.center,
                          decorator: const DotsDecorator(
                              activeColor: Colors.orangeAccent,
                              activeSize: Size(18.0, 8.0),
                              activeShape: RoundedRectangleBorder()
                          ),
                        )
                    )
                  ]
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  width: 375.w,
                  height: 150.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                'Top news',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600
                                ),
                              )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz, size: 30,)
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, i) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Passport disponible Passport disponible Passport disponiblePassport disponible',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w500
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                              Text('20 mars 2024'),
                                            ],
                                          ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 150,
                                        child: Image.asset('assets/images/info_utile.jpg', fit: BoxFit.fill,),
                                      )
                                    ],
                                  ),
                                );
                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          'Activités à venir',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const TestPage());
                        },
                        icon: Icon(Icons.more_horiz, size: 30,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 200.h,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                   child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                       itemCount: 20,
                       itemBuilder: (context, i) {
                         return Container(
                           margin: EdgeInsets.symmetric(horizontal: 10),
                           width: MediaQuery.of(context).size.width / 2,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Image.network('https://images.unsplash.com/photo-1624719507903-7d8b41c7c9cb?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                               SizedBox(height: 10),
                               Text(
                                 'Paquinou oyo fe dèh deyhe',
                                 maxLines: 2,
                                 style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                   fontWeight: FontWeight.w500
                                  ),
                                 overflow: TextOverflow.ellipsis,
                               ),
                               Text(
                                 'à Toula',
                                 style: TextStyle(
                                   color: Colors.orange[900],
                                   fontWeight: FontWeight.w600
                                 ),
                               )
                             ],
                           ),
                         );
                       }
                   ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          'Activités à venir',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, size: 30,)
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 200.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, i) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network('https://images.unsplash.com/photo-1624719507903-7d8b41c7c9cb?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              SizedBox(height: 10),
                              Text(
                                'Paquinou oyo fe dèh deyhe',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'à Toula',
                                style: TextStyle(
                                    color: Colors.orange[900],
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
