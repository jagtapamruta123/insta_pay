import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:instapayflutter/widgets/custom_text_widget.dart';
import 'package:instapayflutter/widgets/search_widget_store_page.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final TextEditingController inputController = new TextEditingController();
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
              SearchProduct(inputController),
              SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'POPULAR CATEGORIES',
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
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZq8CMftjcL8YjQxa3vGg1RuGINpV9VZsOEA&usqp=CAU',
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
                height: 10,
              ),
              CustomTextWidget(
                title: 'ALL CATEGORIES',
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
