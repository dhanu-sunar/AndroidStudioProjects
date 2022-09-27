import 'package:flutter/material.dart';
import 'package:flutter_plant_ui/body.dart';
import 'package:flutter_plant_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/2377473471618134428.svg')),
  );
  }
}



