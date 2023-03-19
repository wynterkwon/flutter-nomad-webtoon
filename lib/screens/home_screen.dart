import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:webtoon/models/webtoon_model.dart';
import 'package:webtoon/screens/api_service.dart';

class MyToons extends StatelessWidget {
  MyToons({super.key});
  final Future<List<WebtoonModel>> webtoons = ApiService().getTodaysToons();
  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Today\'s toons',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
      ),
      body: FutureBuilder(
        future: webtoons, //await 안 붙여도 위젯이 알아서 await 해줌
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        // print(index);
        var webtoon = snapshot.data![index];
        print(webtoon.thumb);
        return 
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 40,
      ),
    );
  }
}
