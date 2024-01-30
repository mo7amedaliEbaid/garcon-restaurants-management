import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final String id;
  final String name;
  final String image;
  final String views;
  final String reviews;
  final List<dynamic> tags;
  final List<dynamic> categories;
  final List<dynamic> pickups;

  const Restaurant({
    required this.id,
    required this.name,
    required this.image,
    required this.views,
    required this.reviews,
    required this.tags,
    required this.categories,
    required this.pickups,
  });

  static Restaurant fromSnapShot(DocumentSnapshot snap) {
    Restaurant restaurant = Restaurant(
      name: snap['name'],
      id: snap['id'],
      image: snap['image'],
      views: snap['views'],
      reviews: snap['reviews'],
      tags: snap['tags'],
      categories: snap['categories'],
      pickups: snap['pickups'],
    );
    return restaurant;
  }

  @override
  List<Object?> get props => [
        name,
        id,
        image,
        views,
        reviews,
        tags,
        pickups,
        categories,
      ];
}
