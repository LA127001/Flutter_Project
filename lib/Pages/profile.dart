import 'package:flutter/material.dart';
import 'package:profile/Pages/Profile_Pages/ManageProfile.dart';
import 'package:profile/widgets/myCard.dart';
import 'package:hugeicons/hugeicons.dart';

class MainProile extends StatelessWidget {
  const MainProile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontWeight: .w700)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Container(
                // height: 120,
                // width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),

                  // boxShadow:[
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     blurRadius: 2,
                  //     spreadRadius: 2,
                  //     offset: Offset(0, 4)
                  //   )
                  // ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        // backgroundImage: NetworkImage(
                        //   "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                        // ),
                        backgroundImage: AssetImage(
                          'assets/images/ProfileImage.jpg',
                        ),
                        radius: 50,
                      ),

                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Ronald Richards",
                            style: TextStyle(fontWeight: .bold, fontSize: 23),
                          ),
                          Text(
                            "ronaldrichards@gmail.com",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Account",
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),

              Container(
                width: double.infinity,
                // height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(.circular(16)),
                ),
                child: Column(
                  children: [
                    MyWidget(
                      title: "Manage Profile",
                      leadingIcon: HugeIcons.strokeRoundedUserCircle02,
                      onTap: () {
                        print("Mange profiel");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Manageprofile(),
                          ),
                        );
                      },
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Password & Security",
                      leadingIcon: HugeIcons.strokeRoundedLockPassword,
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Notification",
                      leadingIcon: HugeIcons.strokeRoundedNotification01,
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Language",
                      leadingIcon: HugeIcons.strokeRoundedLanguageCircle,
                      trailingText: "English",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
              Text(
                "Preferences",
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),

              Container(
                width: double.infinity,
                // height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(.circular(16)),
                ),
                child: Column(
                  children: [
                    MyWidget(
                      title: "About Us",
                      leadingIcon: HugeIcons.strokeRoundedAppleReminder,
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Theme",
                      leadingIcon: HugeIcons.strokeRoundedDarkMode,
                      trailingText: "Light",
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Appointments",
                      leadingIcon: HugeIcons.strokeRoundedCalendar03,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
              Text(
                "Support",
                style: TextStyle(
                  fontWeight: .w500,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),

              Container(
                width: double.infinity,
                // height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(.circular(16)),
                ),
                child: Column(
                  children: [
                    MyWidget(
                      title: "Help Center",
                      leadingIcon: HugeIcons.strokeRoundedHelpCircle,
                    ),
                    Divider(height: 1, color: Colors.grey.shade200),

                    MyWidget(
                      title: "Contact Us",
                      leadingIcon: HugeIcons.strokeRoundedCall02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
