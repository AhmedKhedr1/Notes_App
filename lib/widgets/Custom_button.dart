import 'package:flutter/material.dart';
import 'package:notes_app/Constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.ontap,required this.isloading});

  final void Function()? ontap;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
          width: MediaQuery.of(context).size.width,
          height: 55,
          child: Center(
              child: isloading
                  ? const CircularProgressIndicator(
                    color: Colors.black ,
                  )
                  : const Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
        ),
      ),
    );
  }
}
