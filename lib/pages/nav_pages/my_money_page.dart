import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:instapayflutter/widgets/custom_text_widget.dart';

class MyMoneyPage extends StatefulWidget {
  @override
  _MyMoneyPageState createState() => _MyMoneyPageState();
}

class _MyMoneyPageState extends State<MyMoneyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // alignment: Alignment.center,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      title: 'TITLE',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpecing: 1,
                    ),
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: MediaQuery.of(context).size.width / 4.2,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person_outline,
                                      size: 45,
                                      color: Colors.red,
                                    ),
                                    CustomTextWidget(
                                      title: 'name',
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'TITLE',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpecing: 1,
              ),
              Card(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 0.02)),
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
                            title: 'Mobile Recharge',
                            lines: 2,
                            fontSize: 10,
                            color: Colors.black,
                            letterSpecing: 0.5,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        'https://st2.depositphotos.com/4187197/6209/v/600/depositphotos_62094779-stock-illustration-insurance-services-glows-bright-blue.jpg',
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
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
                height: 10,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.12,
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                  colors: [Colors.red[300], Colors.red]),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                CustomTextWidget(
                                  title: 'name',
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'TITLE',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpecing: 1,
              ),
              Card(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 0.02)),
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
                            title: 'Mobile Recharge',
                            lines: 2,
                            fontSize: 10,
                            color: Colors.black,
                            letterSpecing: 0.5,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
