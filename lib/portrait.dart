import 'package:flutter/material.dart';

class Portrait extends StatelessWidget {
  const Portrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        
        children: [
        ClipOval(
          child: Image.asset('assets/images/profile.jpeg',
         ),
          ),
          const SizedBox(height: 10,),
          Text("Unknown shop",style: Theme.of(context).textTheme.titleLarge,),
                 Text(
            "This is not only delicious but also helathy. The food price 1B. Don't have enough money? Don't worry! Visit our shop , take test free.    ",
            style: Theme.of(context).textTheme.bodySmall,
            ),
         Expanded(
           child:  GridView.builder(

            itemCount: 12,
                shrinkWrap: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  ),
                 itemBuilder: (context,index){
                  return  ListTile(
                    title: Image.asset('assets/images/food1.jpg'),
                  );
                 })
        
         )
        
          ],
          );
  }
}