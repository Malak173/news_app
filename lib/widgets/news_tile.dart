import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
           child: Image.network(
              'https://ichef.bbci.co.uk/ace/standard/1024/cpsprodpb/7a55/live/d905e620-ead9-11ef-bd1b-d536627785f2.jpg.webp',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )
        ),
        const SizedBox(
          height: 12,
        ),
       const Text('datkkkkkkkkkka kjhsh dih nmmmmmmmmmmmmmmco;iiooooool l;nnnnnnnnnnnnnnnnnnn;;;;;;;;;;;;;dcmooooooooooooojv',
       maxLines: 2,
       overflow: TextOverflow.ellipsis,
       style:TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500
       ),),
       const SizedBox(
          height: 12,
        ),
        const Text('dnnnnnnnn',
       maxLines: 2,
       overflow: TextOverflow.ellipsis,
       style:TextStyle(
        color: Colors.black,
        fontSize: 15,
        
       ),),
      ],
    );
  }
}