import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../function/button.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 13, bottom: 10, right: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: TextButton(
            onPressed: () {},
            child: Image.asset(
              'assets/icons/arrow_left.png',
            ),
          ),
        ),
        title: const Text(
          "Analytics",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    "assets/icons/download.png",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              MainCategory(),
              const SizedBox(height: 30),
              const Text(
                "Your Expenses",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/diagram.png'),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ExpenseWidget(
                      title: "Grocery",
                      amount: 300,
                      color: Color(0xFF49A078),
                    ),
                  ),
                  Expanded(
                    child: ExpenseWidget(
                      title: "Shopping",
                      amount: 250,
                      color: Color(0xFF998FC7),
                    ),
                  ),
                  Expanded(
                    child: ExpenseWidget(
                      title: "Transfer",
                      amount: 150,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "10 May Fri",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const PlaylistWidget(
                name: "Ahmad Mughal",
                desc: "Transfer",
                cost: "-\$53.00",
                image: "assets/icons/dollar.png",
              ),
              const PlaylistWidget(
                name: "Netflix",
                desc: "Shopping",
                cost: "-\$15.00",
                image: "assets/icons/netflix.png",
              ),
              const PlaylistWidget(
                name: "Foodpanda",
                desc: "Food",
                cost: "-\$20.00",
                image: "assets/icons/food.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaylistWidget extends StatelessWidget {
  final String name;
  final String desc;
  final String cost;
  final String image;

  const PlaylistWidget({
    required this.name,
    required this.desc,
    required this.cost,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffDBDBDB),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(image),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            cost,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class MainCategory extends StatelessWidget {
  const MainCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryItem(name: "24 h"),
          CategoryItem(name: "Week", isSelected: true),
          CategoryItem(name: "Month"),
          CategoryItem(name: "Year"),
          CategoryItem(image: "assets/icons/diagram.png", isSelected: true),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String? name;
  final String? image;
  final bool isSelected;

  const CategoryItem({
    this.name,
    this.image,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.green : Colors.transparent,
          width: 2,
        ),
        color: isSelected ? Colors.white : Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: image != null
          ? Image.asset(
        image!,
        color: isSelected ? Colors.green : null,
      )
          : Text(
        name!,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
