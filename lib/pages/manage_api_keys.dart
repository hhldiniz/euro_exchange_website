import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ManageApiKeys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/add_api_key");
                    },
                    child: Card(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 36,
                                ),
                              ],
                            ),
                            Row(
                              children: [Text(_localizations.addApiKeyLabel)],
                            )
                          ],
                        ),
                        constraints:
                            BoxConstraints(minWidth: 200, minHeight: 100),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed("/my_api_keys");
                    },
                    child: Card(
                      child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.view_list,
                                    size: 36,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(_localizations.yourApiKeysLabel)
                                ],
                              )
                            ],
                          ),
                          constraints:
                              BoxConstraints(minWidth: 200, minHeight: 100)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
