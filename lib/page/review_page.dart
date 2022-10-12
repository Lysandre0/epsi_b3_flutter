import 'package:flutter/material.dart';
import 'package:flutter_sales/model/product_model.dart';
import '../model/review_model.dart';

final List<Review> lsReview = [
  Review(
      1,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      2,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      3,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      4,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      5,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      6,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
  Review(
      7,
      'https://picsum.photos/200/300',
      'John Doe',
      5,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris. '
          'Sed euismod, nisl sed ultricies ultricies, '
          'nisl nunc aliquam mauris, '
          'sit amet ultricies lorem nunc vel mauris.'),
];

class ReviewPage extends StatelessWidget {
  final Product product;
  ReviewPage(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review'),
      ),
      body: ListView.builder(
        itemCount: lsReview.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(lsReview[index].image),
              ),
              title: Text(lsReview[index].name),
              subtitle: Text(lsReview[index].review),
              trailing: Text(lsReview[index].rating.toString()),
            ),
          );
        },
      ),
    );
  }
}
