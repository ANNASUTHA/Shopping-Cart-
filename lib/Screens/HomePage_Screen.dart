import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopping_cart/Screens/ProductDetails_Screen.dart';
import 'package:shopping_cart/models/Product.dart';
import 'package:shopping_cart/utils/CustomTextStyle.dart';
import 'package:shopping_cart/utils/CustomUtils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final Product product = 0 as Product;

class _HomePageState extends State<HomePage> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOPPING CART"),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              createHeader(),
              createCartList(),
              footer(context)
            ],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[],
          ),
          Utils.getSizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              enableFeedback: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => ProductDetailsPage()));
            },
            child: Text(
              "View Details",
              style: CustomTextStyle.textFormFieldSemiBold
                  .copyWith(color: Colors.white),
            ),
          ),
          Utils.getSizedBox(height: 8),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Container(
      alignment: Alignment.topLeft,
      child: Center(
        child: Text(
          "Choose Your's",
          style: CustomTextStyle.textFormFieldBold
              .copyWith(fontSize: 18, color: Colors.pink),
        ),
      ),
      margin: EdgeInsets.only(left: 12, top: 12),
    );
  }

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

  createCartListItem() {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        color: Colors.blue.shade200,
                        image: DecorationImage(
                            image: AssetImage("images/bag_5.png"))),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 8, top: 4),
                            child: Text(
                              "NIKE XTM Basketball Shoeas",
                              maxLines: 2,
                              softWrap: true,
                              style: CustomTextStyle.textFormFieldSemiBold
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                          Utils.getSizedBox(height: 6),
                          Text(
                            "Special Price(sp)",
                            style: CustomTextStyle.textFormFieldRegular
                                .copyWith(color: Colors.grey, fontSize: 14),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "\$299.00",
                                  style: CustomTextStyle.textFormFieldBlack
                                      .copyWith(color: Colors.green),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    buildOutlineButton(
                                      icon: Icons.remove,
                                      press: () {
                                        if (numOfItems > 1) {
                                          setState(() {
                                            numOfItems--;
                                          });
                                        }
                                      },
                                    ),
                                    Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          bottom: 2, right: 8, left: 8),
                                      child: Text(
                                        // if our item is less  then 10 then  it shows 01 02 like that
                                        numOfItems.toString().padLeft(2, "0"),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                    ),
                                    buildOutlineButton(
                                        icon: Icons.add,
                                        press: () {
                                          setState(() {
                                            numOfItems++;
                                          });
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 35,
      height: 30,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
