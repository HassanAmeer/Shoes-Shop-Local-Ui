import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/constant.dart';
import 'package:ui/home_scree.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
          child: Column(
            children: [
              SizedBox(
                height: h1 * 2 / 20,
              ),
              const Center(
                child: Text(
                  'Sign In Now',
                  style: headingtext,
                ),
              ),
              SizedBox(
                height: h1 * 2 / 90,
              ),
              Container(
                height: 4,
                width: 100,
                color: color1,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'please sign in to continue using our app',
                  style: text1,
                ),
              ),
              Login_Form(h1: h1),
              SizedBox(
                height: h1 * 2 / 70,
              ),
              Row(
                children: [
                  Checkbox(
                      focusColor: color1,
                      checkColor: color1,
                      // activeColor: Colors.redAccent,
                      value: true,
                      onChanged: (val) {
                        setState(() {});
                        val == val;
                      }),
                  const Text(
                    'Remember Me',
                    style: text1,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget Password',
                        style: TextStyle(
                            color: color1, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                height: h1 * 2 / 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const home_screen())));
                  });
                },
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                      color: color1, borderRadius: BorderRadius.circular(9)),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h1 * 2 / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.grey[300],
                    height: 2,
                    width: 150,
                  ),
                  const Text(
                    'OR',
                    style:
                        TextStyle(color: grecolor, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 2,
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: h1 * 2 / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      height: 55,
                      width: 156,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images.png',
                            width: 40,
                          ),
                          const Text(
                            'Facebook',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      height: 55,
                      width: 166,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/uio.png',
                            width: 40,
                          ),
                          const Text(
                            'Google',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 19),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h1 * 2 / 53,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont' have an account ?",
                    style: text1,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sign_up()));
                        });
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: color1, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Login_Form extends StatelessWidget {
  const Login_Form({
    super.key,
    required this.h1,
  });

  final double h1;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        SizedBox(
          height: h1 * 2 / 30,
        ),
        Container(
          height: 47,
          width: 340,
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                hintText: 'Email Address',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ),
        SizedBox(
          height: h1 * 2 / 40,
        ),
        Container(
          height: 47,
          width: 340,
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: const Icon(
                  Icons.fingerprint_rounded,
                  color: Colors.grey,
                  size: 20,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ),
      ],
    ));
  }
}

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    double h1 = MediaQuery.of(context).size.height;
    double w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h1 * 2 / 50,
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const Login_Screen())));
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 33,
                        ),
                      )),
                  SizedBox(
                    width: w1 * 2 / 12,
                  ),
                  const Text(
                    'Sign Up Now',
                    style: headingtext,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h1 * 2 / 600,
            ),
            Container(
              height: 4,
              width: 100,
              color: color1,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'please sign up to continue using our app',
                style: text1,
              ),
            ),
            Form(
                child: Column(
              children: [
                SizedBox(
                  height: h1 * 2 / 50,
                ),
                Container(
                  height: 47,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.person_2_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Full Name',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                Container(
                  height: 47,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Email Address',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                Container(
                  height: 47,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.local_phone_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Phone Number',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                Container(
                  height: 47,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.fingerprint_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Password',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                SizedBox(
                  height: h1 * 2 / 80,
                ),
                Container(
                  height: 47,
                  width: 340,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.fingerprint_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: 'Confirm Password',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: h1 * 2 / 220,
            ),
            Row(
              children: [
                Checkbox(
                    focusColor: color1,
                    checkColor: color1,
                    value: true,
                    onChanged: (val) {
                      setState(() {});
                      val == val;
                    }),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(text: 'I agree to the ', style: text1),
                  TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                          color: color1, fontWeight: FontWeight.bold)),
                  TextSpan(text: ' and ', style: text1),
                  TextSpan(
                      text: 'Privacy Policy',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: color1))
                ])),
              ],
            ),
            SizedBox(
              height: h1 * 2 / 90,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    color: color1, borderRadius: BorderRadius.circular(9)),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h1 * 2 / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.grey[300],
                  height: 2,
                  width: 140,
                ),
                const Text(
                  'OR',
                  style:
                      TextStyle(color: grecolor, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.grey[300],
                  height: 2,
                  width: 140,
                ),
              ],
            ),
            SizedBox(
              height: h1 * 2 / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(9)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images.png',
                          width: 40,
                        ),
                        const Text(
                          'Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 19),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(9)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/uio.png',
                          width: 40,
                        ),
                        const Text(
                          'Google',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 19),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: h1 * 2 / 73,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(text: 'By signing up you accept the ', style: text1),
              TextSpan(
                  text: 'Terms of',
                  style: TextStyle(color: color1, fontWeight: FontWeight.bold))
            ])),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Service',
                  style: TextStyle(color: color1, fontWeight: FontWeight.bold)),
              TextSpan(text: ' and ', style: text1),
              TextSpan(
                  text: 'Privacy policy',
                  style: TextStyle(color: color1, fontWeight: FontWeight.bold)),
            ])),
            // SizedBox(
            //   height: h1 * 2 / 53,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account ?",
                  style: text1,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login_Screen()));
                      });
                    },
                    child: const Text(
                      'Sign In',
                      style:
                          TextStyle(color: color1, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
