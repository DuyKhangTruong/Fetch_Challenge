# Fetch_Mealdb
The app uses SwiftUI, MVVM application architecture, and [The Meal DB public API](https://www.themealdb.com/). The app utilizes the following 2 endpoints: 
- https://themealdb.com/api/json/v1/1/filter.php?c=Dessert for fetching the list of meals in the Dessert category
- https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID for fetching the meal details by its
ID.

## Requirements
The user should be shown the list of meals in the Dessert category, **sorted alphabetically**

When the user selects a meal, they should be taken to a detailed view that includes:
- Meal name
- Origin (added feature)
- Hide or display tags if meal does have (added feature)
- Instructions
- Ingredients/measurements

## Screenshots
<p align="center">
    <img src="https://github.com/DuyKhangTruong/Fetch_Challenge/blob/main/screenshot1.png" width="200"> &nbsp;
    <img src="https://github.com/DuyKhangTruong/Fetch_Challenge/blob/main/screenshot2.png" width="200"> &nbsp;
    <img src="https://github.com/DuyKhangTruong/Fetch_Challenge/blob/main/screenshot3.png" width="200"> &nbsp;
    <img src="https://github.com/DuyKhangTruong/Fetch_Challenge/blob/main/screenshot4.png" width="200"> &nbsp;

</p>

## GIF
![](https://github.com/DuyKhangTruong/Fetch_Mealdb/blob/main/demo.gif)

## Technology
- iOS 14 and above
- SwiftUI
- KingFisher
