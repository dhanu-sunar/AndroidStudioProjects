import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will give us total height and width of our screen
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        Container(
          // This covers 20% of our total height
          height: size.height * 0.2,
          // color: Colors.black,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: 20 + kDefaultPadding),
                height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                )
              ),
                child: Row(
                  children: [
                    Text('Hello, Dhan', style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),

                    Spacer(),
                    
                    Image.asset('assets/images/logo.png'),
                  ],
                ),
              ),

              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23)
                          )
                        ]
                    ),

                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search)
                      ),
                    ),
                  )),
            ],
          ),
        ),

        SizedBox(height: 30.0),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Todya\'s news', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: kPrimaryColor,
              )),

              Icon(Icons.more_horiz),
            ],
          ),
        )

      ],
    );
  }
}
