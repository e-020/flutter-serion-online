// استيراد مكتبة فلاتر الخاصة بالتصميم
import 'package:flutter/material.dart';

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
      home: const HomePage(), // الصفحة الأولى التي تظهر وهي HomePage
    );
  }
}

// تعريف كلاس الصفحة الرئيسية
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // منشئ الصفحة مع مفتاح (key)
  
  @override
  Widget build(BuildContext context) {
    // نبني واجهة الصفحة الرئيسية
    return Scaffold(
      appBar: AppBar(
        title: const Text('الصفحة الرئيسية'), // عنوان شريط التطبيق (AppBar)
      ),
      body: const Center(
        child: Text('أهلاً بك في مشروع فلاتر فارغ'), // نص يظهر في منتصف الشاشة
      ),
    );
  }
}
