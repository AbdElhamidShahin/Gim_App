import 'package:Abdo_Shahin/view/FAQPage.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Setings extends StatelessWidget {
  const Setings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'الإعدادات',
            style: TextStyle(
              color: Colors. black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildSettingsOption(
            context,
            icon: Icons.star,
            title: 'تقييم التطبيق',
            onPressed: () {
              Share.share('لينك التقييم على جوجل بلاي!');
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.share,
            title: 'مشاركة',
            onPressed: () {
              Share.share('لينك التطبيق على جوجل بلاي!');
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.warning,
            title: 'تحذير',
            onPressed: () {
              _showWarningDialog(context);
            },
          ),
          _buildSettingsOption(
            context,
            icon: Icons.question_answer_sharp,
            title: 'أسئلة شائعة',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FAQPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsOption(BuildContext context,
      {required IconData icon, required String title, required VoidCallback onPressed}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Icon(icon, color: Colors.teal, size: 28),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.teal),
        onTap: onPressed,
      ),
    );
  }

  void _showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('تحذير', style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text('هذه رسالة تحذير.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('موافق'),
            ),
          ],
        );
      },
    );
  }
}
