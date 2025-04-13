import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "RegisterScreen";

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showPassword = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  FocusNode usernameNode = FocusNode();
  FocusNode confirmpasswordNode = FocusNode();

  @override
  void initState() {
    emailController.addListener(() {
      _handleListener();
    });
    passwordController.addListener(() {
      _handleListener();
    });
    usernameController.addListener(() {
      _handleListener();
    });
    confirmpasswordController.addListener(() {
      _handleListener();
    });
    emailNode.addListener(() {
      _handleListener();
    });
    passwordNode.addListener(() {
      _handleListener();
    });
    usernameNode.addListener(() {
      _handleListener();
    });
    confirmpasswordNode.addListener(() {
      _handleListener();
    });

    super.initState();
  }

  void _handleListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors().white,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                size: 30.sp,
              ),
            ),
            foregroundColor: AppColors().inkColor,
            backgroundColor: AppColors().white,
            centerTitle: true,
            elevation: 0,
            title: Text(
              "Register",
              style: TextStyle(
                color: AppColors().inkColor,
                fontFamily: "OpenSans",
                fontSize: 20.sp,
                height: 1.7.h,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Please fill your details to sign up",
                      style: TextStyle(
                        color: AppColors().inkColor,
                        fontFamily: "OpenSans",
                        fontSize: 14.sp,
                        height: 1.8.h,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors().lightCream,
                      ),
                      child: TextFormField(
                        controller: usernameController,
                        focusNode: usernameNode,
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 14.sp,
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            height: 1.2,
                            fontSize: 14.sp,
                          ),
                          hintText: "Username",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors().transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors().inkColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors().lightCream,
                      ),
                      child: TextFormField(
                        controller: emailController,
                        focusNode: emailNode,
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 14.sp,
                        ),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            height: 1.2,
                            fontSize: 14.sp,
                          ),
                          hintText: "Email",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors().transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors().inkColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors().lightCream,
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        focusNode: passwordNode,
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors().transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors().inkColor, width: 1.5),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            child: showPassword
                                ? Icon(
                                    Icons.visibility_off,
                                    color: passwordNode.hasFocus
                                        ? AppColors().inkColor
                                        : AppColors().inkColor.withOpacity(
                                              0.5,
                                            ),
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: passwordNode.hasFocus
                                        ? AppColors().inkColor
                                        : AppColors().inkColor.withOpacity(
                                              0.5,
                                            ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors().lightCream,
                      ),
                      child: TextFormField(
                        controller: confirmpasswordController,
                        focusNode: confirmpasswordNode,
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors().transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors().inkColor, width: 1.5),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            child: showPassword
                                ? Icon(
                                    Icons.visibility_off,
                                    color: confirmpasswordNode.hasFocus
                                        ? AppColors().inkColor
                                        : AppColors().inkColor.withOpacity(
                                              0.5,
                                            ),
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: confirmpasswordNode.hasFocus
                                        ? AppColors().inkColor
                                        : AppColors().inkColor.withOpacity(
                                              0.5,
                                            ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 8.h),
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors().inkColor,
                      ),
                      child: Material(
                        color: AppColors().transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            // Navigator.of(context)
                            //     .pushNamed(LoginScreen.routeName);
                          },
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: AppColors().white,
                                fontFamily: "OpenSans",
                                fontSize: 14.sp,
                                height: 1.7.h,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20.h),
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors().transparent,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                    child: Center(
                      child: Text(
                        "Already a member? Login",
                        style: TextStyle(
                          color: AppColors().inkColor,
                          fontFamily: "OpenSans",
                          fontSize: 14.sp,
                          height: 1.7.h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
