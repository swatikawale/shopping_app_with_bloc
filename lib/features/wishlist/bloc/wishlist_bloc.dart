import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shopping_app/data/wishlist_items.dart';
import 'package:shopping_app/features/home/models/home_product_data_model.dart'; 
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<WishListRemoveFromWishlistEvent>(wishlistRemoveFromWishlistEvent);
  }

    FutureOr<void> wishlistInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistRemoveFromWishlistEvent(
      WishListRemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
// emit()
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
