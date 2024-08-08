import 'package:aimsprojectmanagement/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isObscured = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController noKpController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Image.network('https://images.squarespace-cdn.com/content/v1/5e3abcccab22ee71647b1a5a/1589971593362-42LZGC3ZTDAQ41NT58TI/Artboard+8+copy+8value+ladder.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            //color: Colors.yellow,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network('https://vectorlogo4u.com/wp-content/uploads/2020/11/LOGO-JATA-NEGARA-TERKINI-01.png'),
                      const SizedBox(height: 10,),
                      const Text(
                        'UNIT PENYELARASAN PELAKSANAAN\n(JABATAN PERDANA MENTERI)',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),),
                      const SizedBox(height: 10,),
                      Image.asset(
                        'assets/logo.png',
                        height: 50,
                      ),
                      // const Text(
                      //   'MyProjek 2.0',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       fontSize: 25,
                      //       fontWeight: FontWeight.bold
                      //   ),
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: noKpController,
                        validator: (val){
                          if(val!.isEmpty) return 'Sila masukkan no kad pengenalan';

                          return null;
                        },
                        style: const TextStyle(fontSize: 12),
                        enabled: true,
                        decoration: const InputDecoration(
                          hintText: 'No Kad Pengenalan',
                          //hintStyle: TextStyle(color: AppColor.black),
                          //labelText: '',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide.none),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (val){
                          if(val!.isEmpty) return 'Sila masukkan kata laluan';

                          return null;
                        },
                        obscureText: isObscured,
                        style: const TextStyle(fontSize: 12),
                        enabled: true,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              isObscured ? Icons.visibility_off : Icons.visibility,
                              color: AppColor.black,
                            ),
                            onPressed: () {
                              setState(() {
                                isObscured = !isObscured;
                              });
                            },
                          ),
                          hintText: 'Kata Laluan',
                          //labelText: '',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.all(10),
                          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide.none),
                        ),
                      ),
                      // const SizedBox(height: 20,),
                      // GestureDetector(
                      //     onTap: (){
                      //       Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ResetPasswordScreen()));
                      //     },
                      //     child: const Text('Lupa Kata Laluan?', style: TextStyle(color: AppColor.black3, decoration: TextDecoration.underline),)
                      // ),
                      const SizedBox(height: 20,),
                      GFButton(
                        onPressed: () async {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyHomePage(title: '')));
                        },
                        text: 'LOGIN',
                        shape: GFButtonShape.pills,
                        color: AppColor.black,
                      ),
                      SizedBox(height: 10,),
                      Text('atau log masuk dengan', style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20,),
                      GFButton(
                          onPressed: (){},
                          shape: GFButtonShape.pills,
                          type: GFButtonType.outline,
                          size: 50,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network('https://www.mkn.gov.my/web/wp-content/uploads/sites/3/2024/06/DAFTAR-MYDIGITAL-ID.jpg'),
                              SizedBox(width: 20,),
                              Text('MYDIGITAL ID',
                                style: TextStyle(
                                  fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                      ),
                      const SizedBox(height: 200,),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
