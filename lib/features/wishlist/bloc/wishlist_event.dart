part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent{
  
}

class WishListRemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;
  WishListRemoveFromWishlistEvent({
    required this.productDataModel,
  });
}