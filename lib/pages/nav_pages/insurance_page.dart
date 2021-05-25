import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:instapayflutter/widgets/custom_text_widget.dart';

class InsurancePage extends StatefulWidget {
  @override
  _InsurancePageState createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextWidget(
                        title: 'INSURANCE TYPE',
                        lines: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpecing: 0.5,
                      ),
                    ),
                    Divider(
                      indent: 10,
                      thickness: 0.5,
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 0.02)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/dth.png',
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CustomTextWidget(
                                    title: 'insurance',
                                    lines: 2,
                                    fontSize: 12,
                                    color: Colors.black,
                                    letterSpecing: 0.5,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      'https://image.freepik.com/free-vector/piggy-bank-with-realistic-golden-coins_1284-13529.jpg',
                      fit: BoxFit.fill,
                    );
                  },
                  autoplay: false,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  pagination: new SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    // builder: SwiperPagination.fraction,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextWidget(
                        title: 'INSURANCE TYPE',
                        lines: 2,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpecing: 0.5,
                      ),
                    ),
                    Divider(
                      indent: 10,
                      thickness: 0.5,
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 0.02)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/dth.png',
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CustomTextWidget(
                                    title: 'insurance',
                                    lines: 2,
                                    fontSize: 12,
                                    color: Colors.black,
                                    letterSpecing: 0.5,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
