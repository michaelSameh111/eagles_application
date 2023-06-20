import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddActivityScreen extends StatefulWidget {
  static const String routeName = 'add-activity-screen';

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  String? _selectService;

  final List<String> _services = [
    'حضور القداس',
    'صلاة باكر',
    'صلاة الغروب',
    'صلاة النوم',
    'قراءة الإنجيل',
    'حضور الإجتماع'
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
          child: Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Add Activity',
                      style: MyTheme.lightTheme.primaryTextTheme.subtitle2,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Service',
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          border: Border.all(
                              color: const Color(0xffe9e8e9), width: 0.4.w)),
                      child: DropdownButtonFormField<String>(
                        value: _selectService,
                        onChanged: (value) {
                          setState(() {
                            _selectService = value;
                          });
                        },
                        items: _services.map((service) {
                          return DropdownMenuItem<String>(
                            value: service,
                            child: Text(service),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Please Choose Service',
                            hintStyle: const TextStyle(color: Color(0xffaaaaac)),
                            contentPadding: EdgeInsets.all(2.h)),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Description',
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          border: Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            errorMaxLines: 5,
                            hintStyle: TextStyle(color: Color(0xffaaaaac)),
                            contentPadding: EdgeInsets.all(2.h)),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),

                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          //add activity
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyTheme.mainBlue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>
                              (RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)
                            ))
                        ),
                        child: const Text('Add'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
