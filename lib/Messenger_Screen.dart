import 'package:flutter/material.dart';

class messengerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/107998122?s=400&u=9d3e8f8315443a0a49c6182ea782bf788b6f4fec&v=4'
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),

          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius:15.0,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              ),

          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius:15.0,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),

          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],

                ),
                padding: EdgeInsets.all(5.0),

                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 102.0,

                child: ListView.separated(
                  shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => bulidStoryItem(),
                  separatorBuilder: (context,index) =>SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 20,

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
               ListView.separated(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context, index) =>bulidChatItem() ,
                    separatorBuilder:(context,index) =>SizedBox(
                      height: 20.0,
                    ) ,
                    itemCount:50,
                ),





            ],
          ),
        ),
      ),
    );

  }

  Widget bulidChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/107998122?s=400&u=9d3e8f8315443a0a49c6182ea782bf788b6f4fec&v=4'
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohamed Mamdoh',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize : 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),

            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my  name is mohamed mamdoh',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '03:00 pm',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),


    ],
  );
  Widget bulidStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/107998122?s=400&u=9d3e8f8315443a0a49c6182ea782bf788b6f4fec&v=4'
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Mohamed Elnady',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );




}
