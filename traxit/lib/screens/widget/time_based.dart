import 'package:flutter/material.dart';
import 'package:traxit/configs/configs.dart';

class TimeBasedPenaltiesContainer extends StatelessWidget {
  final String title;
  final List<PenaltyItem> items;

  const TimeBasedPenaltiesContainer({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(15),
      decoration: BoxDecoration(
        color: AppTheme.c.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppText.b1bm?.w(6)
             
        
          ),
      
         
      Space.yf(16),

          /// Display list of sub containers
          Column(
            children: List.generate(
              items.length,
              (index) => Padding(
                padding: Space.vf(12),
                child: items[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class PenaltyItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String points;
  

  const PenaltyItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.points,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:Space.all(12),
      decoration: BoxDecoration(
        color: AppTheme.c.background.main,
        borderRadius: BorderRadius.circular(10),
       
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Left Text Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppText.b2bm?.w(5),
              ),
                
              
              Space.yf(2),
             
              Text(
                subtitle,
                style: AppText.l2?.cl(AppTheme.c.text.main!)
                 
                
              ),
            ],
          ),

          /// Points Badge
          Container(
            padding: Space.all(10,5),
            
            
            decoration: BoxDecoration(
              color:AppTheme.c.primary.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text( 
              '${points} Pts',
              style:AppText.l2b?.w(7).cl(AppTheme.c.primary.shade600!)
               
              
            ),
          ),
        ],
      ),
    );
  }
}
