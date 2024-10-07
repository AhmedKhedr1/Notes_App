import 'package:flutter/material.dart';

class Custom_icon extends StatelessWidget {
  const Custom_icon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:50 ,
      width:50 ,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey.withOpacity(0.1)
      ),
      child: Icon(icon,size: 30,),
     
    
    
    );
  }
}