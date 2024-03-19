import 'package:fedesie_client_app/pages/office/widgets/office_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficePage extends StatelessWidget {
  const OfficePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildOfficeAppBar(),
      body: listOfOfficeMember(context),
    );
  }
}
