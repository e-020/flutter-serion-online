// استيراد مكتبة فلاتر الخاصة بالتصميم
import 'package:flutter/material.dart';
import 'package:first/navbar.dart';


// الدالة الأساسية التي يبدأ منها التطبيق
void main() {
  runApp(const MyApp()); // شغل تطبيقنا الرئيسي MyApp
}

// تعريف كلاس التطبيق الرئيسي
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // منشئ الكلاس مع مفتاح (key) للتعرف على الواجهة

  @override
  Widget build(BuildContext context) {
    // هنا نبني واجهة التطبيق
    return MaterialApp(
      title: 'مشروعي', // عنوان التطبيق (يظهر في بعض الأنظمة)
      debugShowCheckedModeBanner: false, // يخفي شعار "Debug" من أعلى الشاشة
      home: const Navbar(), // الصفحة الأولى التي تظهر وهي HomePage
    );
  }
}


