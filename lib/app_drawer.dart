import 'package:flutter/material.dart';
import 'package:instapayflutter/widgets/custom_text_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  String userName;

  CustomDrawerWidget({
    this.userName = 'Amruta',
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 100,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                  horizontalTitleGap: 7,
                  title: CustomTextWidget(
                    fontSize: 20,
                    title: 'name',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          DrawerWidget(
            onTap: () {},
            leading: Image.asset(
              'assets/images/upi.png',
              height: 25,
              width: 25,
            ),
            name: 'UPI ID ',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/shoping_cart.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Addresses',
          ),

          DrawerWidget(
            onTap: null,
            // leading: Image.asset(
            //   'images/wishlist.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Change Password',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/purchase_history.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Supr Wallet',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/about_us.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Wallet Transactions',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/contact_us.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Supr Access',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/contact_us.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'refer and Save',
          ),

          DrawerWidget(
            onTap: () {},
            // leading: Image.asset(
            //   'images/contact_us.png',
            //   height: 25,
            //   width: 25,
            // ),
            name: 'Support and FAQs',
          ),
          Spacer(),
          Divider(
              // indent: 40,
              ),

          // Divider(),
          DrawerWidget(
            onTap: () {},
            leading: Icon(
              Icons.logout,
            ),
            name: 'Logout',
          )
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  Widget leading;
  String name;
  Function onTap;
  DrawerWidget({
    @required this.name,
    this.leading,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: leading,
        horizontalTitleGap: -1,
        title: CustomTextWidget(
          title: name,
        ),
      ),
    );
  }
}
