import 'package:eagles_application/customized_widgets/simple_edit_profile_container.dart';
import 'package:eagles_application/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = 'Edit-Profile-screen';

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? _selectedGender;

  final List<String> _genders = ['Male', 'Female'];

  DateTime? _selectedDate;

  TextEditingController? _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile'),
        ),
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
                    Text(
                      'Basic Information',
                      style:
                      MyTheme.lightTheme.primaryTextTheme.subtitle2,
                      //style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Name',
                    ),
                    SimpleEditProfileContainer(
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Phone',
                    ),
                    SimpleEditProfileContainer(
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Email',
                    ),
                    SimpleEditProfileContainer(
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Gender',
                    ),
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
                            contentPadding: EdgeInsets.all(2.h)),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Address',
                    ),
                    SimpleEditProfileContainer(
                      keyboardType: TextInputType.streetAddress,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Text(
                      'Date of Birth',
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          border:
                              Border.all(color: Color(0xffe9e8e9), width: 0.4.w)),
                      child: TextFormField(
                        onTap: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate:
                                DateTime.now().subtract(Duration(days: 72 * 365)),
                            firstDate:
                                DateTime.now().subtract(Duration(days: 73 * 365)),
                            lastDate: DateTime.now(),
                          );
                          if (picked != null) {
                            setState(() {
                              _selectedDate = picked;
                              _textEditingController?.text =
                                  DateFormat('dd/MM/yyyy').format(_selectedDate!);
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
                    const Text(
                      'Father',
                    ),
                    SimpleEditProfileContainer(
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          //save edits
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyTheme.mainBlue),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.w)))),
                        child: Text('Save Edits'))
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
