import 'package:eagles_application/customized_widgets/reused_drawer.dart';
import 'package:eagles_application/customized_widgets/simple_news_feed_container.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class NewsFeedScreen extends StatefulWidget {
  static const String routeName = 'News-Feed-screen';

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  String? _selectedGender;

  final List<String> _genders = ['Male', 'Female'];

  DateTime? _selectedDate;

  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Please complete missing\ninfo'
          ),
        ),
        drawer: ReusedDrawer(),
        body: Container(
          width: double.infinity.w,
          margin: EdgeInsets.all(5.w),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(2.w)),
          child: Padding(
              padding: EdgeInsets.all(5.w),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Name',
                      ),
                      SimpleNewsFeedContainer( //customized widget
                          hintText: 'Enter Your Name',
                          keyboardType: TextInputType.text),
                       SizedBox(
                        height: 3.h,
                      ),
                      const Text(
                        'Phone',
                      ),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Phone Number',
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Gender'),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            border: Border.all(
                                color: const Color(0xffe9e8e9), width: 0.4.w)),
                        child: DropdownButtonFormField<String>(
                          value: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                          items: _genders.map((gender) {
                            return DropdownMenuItem<String>(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Please Choose Gender',
                              hintStyle: TextStyle(color: Color(0xffaaaaac)),
                              // suffixIcon: Icon(
                              //   Icons.arrow_drop_down_circle_sharp,
                              //   color: Colors.red,
                              // ),
                              contentPadding: EdgeInsets.all(2.h)),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Email'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Address'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Address',
                        keyboardType: TextInputType.streetAddress,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('University'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your University',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Class'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Class',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Date of Birth'),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            border:
                                Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
                        child: TextFormField(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now()
                                  .subtract(Duration(days: 72 * 365)),
                              firstDate: DateTime.now()
                                  .subtract(Duration(days: 73 * 365)),
                              lastDate: DateTime.now(),
                            );
                            if (picked != null) {
                              setState(() {
                                _selectedDate = picked;
                                _textEditingController.text =
                                    DateFormat('dd/MM/yyyy')
                                        .format(_selectedDate!);
                              });
                            }
                          },
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Choose Your Date Of Birth',
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey.shade700,
                            ),
                            hintStyle: TextStyle(color: Color(0xffaaaaac)),
                            contentPadding: EdgeInsets.all((2.h)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Father'),
                      SimpleNewsFeedContainer(
                        hintText: 'اسم أب الإعتراف',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Career'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Career',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Graduated From'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter College Graduated From',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text('Hobbies'),
                      SimpleNewsFeedContainer(
                        hintText: 'Enter Your Hobbies',
                        keyboardType: TextInputType.multiline,
                        errorMaxLines: 5,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            //submit data
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyTheme.mainBlue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>
                              (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)
                            ))
                          ),
                          child: Text('Submit'))
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
