import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          size: 20,
          color: Colors.black,
        ),
        title: Text(translator.translate('Settings'),
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(translator.translate('Notifications'),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.notifications,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(translator.translate('Languages'),
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                OutlinedButton(onPressed: (){
                  translator.setNewLanguage(context,
                      newLanguage: translator.currentLanguage=='ar' ? 'en' : 'ar',
                  remember: true,
                    restart: true,
                  );

                }, child: Text(translator.translate('English'))),
              ],
            ),


            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(translator.translate('Country'),
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(translator.translate('Egypt'),
              style: TextStyle(color: Colors.purple, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(translator.translate('Login'),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
