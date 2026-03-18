import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:profile/widgets/button.dart';
import 'package:profile/widgets/controller.dart';

class Manageprofile extends StatelessWidget {
  const Manageprofile({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: "Ronald Richards");
    final genderController = TextEditingController(text: "Male");
    final birthdayController = TextEditingController(text: '05-01-2001');
    final phoneController = TextEditingController(text: "123452346345");
    final emailController = TextEditingController(
      text: "ronaldrichards@gmail.com",
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile", style: TextStyle(fontWeight: .w700)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade100,

      body: Padding(
        padding: .all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: .all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/ProfileImage.jpg',
                          ),
                          radius: 80,
                        ),
                      ),

                      Positioned(
                        // top: 20,
                        right: 5,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: .all(8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedCameraAdd02,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 1, color: Colors.grey),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomFormField(
                      label: "Full name",
                      controller: nameController,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CustomFormField(
                            label: "Gender",
                            controller: genderController,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: CustomFormField(
                            label: "Birthday",
                            controller: birthdayController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      label: "Phone number",
                      controller: phoneController,
                    ),
                    SizedBox(height: 16),

                    CustomFormField(
                      label: "Email",
                      controller: emailController,
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Button(
          title: "Save",
          onTap: () {
            showSnackBar(context, "Profile Updated..", Colors.black87);
          },
        ),
      ),
    );
  }
}
