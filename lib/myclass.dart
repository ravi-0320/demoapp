import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myclass extends GetxController
{
  RxInt sum=0.obs;

  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  void getval(String text1,String text2,int t)
  {
    int n1=num.parse(text1).toInt();
    int n2=num.parse(text2).toInt();
    if(t==1)
      {
        sum.value=n1+n2;
      }
    if(t==2)
      {
        sum.value=n1*n2;
      }

  }

}