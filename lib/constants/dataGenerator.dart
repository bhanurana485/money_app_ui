// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:money_app/models/TranscationModel.dart';
import 'package:money_app/models/cardModel.dart';
import 'package:money_app/models/listModel.dart';

List<CardModel> cardData() {
  List<CardModel> mRecentSearchList = [];

  mRecentSearchList.add(new CardModel(
      userName: "Arun Kumar", cardNumber: 123456789, color: Colors.blueAccent));
  mRecentSearchList.add(new CardModel(
      userName: "Bhanu Pratap", cardNumber: 123456789, color: Colors.black));
  mRecentSearchList.add(new CardModel(
      userName: "Gulshan Chaudhary",
      cardNumber: 445434454,
      color: Colors.blueGrey.shade400));

  return mRecentSearchList;
}

List<TransactionModel> tranactionMenuList() {
  List<TransactionModel> mList = [];
  mList.add(TransactionModel(
      title: "Money Transfer", icon: "assets/images/money-transfer.png"));
  mList.add(TransactionModel(
      title: "Bank Withdraw", icon: "assets/images/withdraw.png"));
  mList.add(TransactionModel(
      title: "Insite Tracking", icon: "assets/images/tracking.png"));

  return mList;
}

List<ListModel> cardListModeldata() {
  List<ListModel> mList = [];
  mList.add(ListModel(
      title: "Uber Ride",
      amount: "+200",
      icon: "assets/images/uber.png",
      date: "20-9-2002"));
  mList.add(ListModel(
      title: "Nike Outlet",
      amount: "+200",
      icon: "assets/images/nike.png",
      date: "20-9-2002"));
  mList.add(ListModel(
      title: "KFC bill",
      amount: "-50",
      icon: "assets/images/meat.png",
      date: "20-9-2002"));
  mList.add(ListModel(
      title: "Uber Ride",
      amount: "+100",
      icon: "assets/images/uber.png",
      date: "20-9-2002"));
  mList.add(ListModel(
      title: "Nike Outlet",
      amount: "+200",
      icon: "assets/images/nike.png",
      date: "20-9-2002"));
  return mList;
}
