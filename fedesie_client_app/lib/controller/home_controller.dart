import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fedesie_client_app/models/activity_category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/activity/activity.dart';

class HomePageController extends GetxController {



  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference activityCollection;
  late CollectionReference categoryCollection;

  List<Activity> activities = [];
  List<Activity> activitiyShowUI = [];
  List<Category> categories = [];
  List<Activity> recentActivities = [];
  @override
  Future<void> onInit() async {
    activityCollection = firestore.collection("activites");
    categoryCollection = firestore.collection('category');
    await getRecentActivities();
    await fetchCategories();
    await fetchActivities();

    super.onInit();
  }

  fetchActivities() async {
    try {
      QuerySnapshot activitySnapshot = await activityCollection.get();
      final List<Activity> retrievedActivities = activitySnapshot.docs.map((doc) => Activity.fromJson(
          doc.data() as Map<String, dynamic>)).toList();
      activities.clear();
      activities.assignAll(retrievedActivities);
      activitiyShowUI.assignAll(activities);
      Get.snackbar('Success', "Activity fetch successfully!", colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Error', "Something was wrong!", colorText: Colors.red);
    } finally {
      update();
    }
  }

  fetchCategories() async {
    try {
      QuerySnapshot categorySnapshot = await categoryCollection.get();
      final List<Category> retrievedCategories = categorySnapshot.docs.map((doc) => Category.fromJson(
          doc.data() as Map<String, dynamic>)).toList();
      categories.clear();
      categories.assignAll(retrievedCategories);
      Get.snackbar('Success', "Category fetch successfully!", colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Error', "Something was wrong!", colorText: Colors.red);
    } finally {
      update();
    }
  }

  filterByCategory(String category) {
    activitiyShowUI.clear();
    activitiyShowUI = activities.where((activity) => activity.categorie == category).toList();
    update();
  }

  clearCategoryFilter() {
    activitiyShowUI.clear();
    activitiyShowUI.assignAll(activities);
    update();
  }

  Future<void> getRecentActivities() async {
    try {
      QuerySnapshot snapshot = await activityCollection.orderBy('date', descending: true).limit(4).get();
      List<Activity> recentAllActivities = snapshot.docs.map((doc) => Activity.fromJson(doc.data() as Map<String, dynamic>)).toList();

      recentActivities.assignAll(recentAllActivities);
      update();
    } catch (e) {
      Get.snackbar('Error', "Something went wrong while fetching recent activities!", colorText: Colors.red);
    }
  }

}