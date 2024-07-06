# FAQ

Here are 20 basic questions for beginners to understand your login and registration page UI in Flutter:

1. **What package needs to be imported to use Flutter's material design?**
   - `import 'package:flutter/material.dart';`

2. **How do you disable the debug banner in a Flutter app?**
   - Set `debugShowCheckedModeBanner` to `false` in the `MaterialApp` widget.

3. **Which widget is used to define the main entry point of the app?**
   - `MaterialApp`

4. **How do you define a route in Flutter?**
   - Use the `routes` property in `MaterialApp`.

5. **What widget is used to create a stateful widget?**
   - `StatefulWidget`

6. **How do you navigate to another screen in Flutter?**
   - Use `Navigator.pushNamed(context, 'routeName');`

7. **What widget is used to create a text field for user input?**
   - `TextField`

8. **How can you obscure text input (e.g., for passwords) in a `TextField`?**
   - Set `obscureText` to `true`.

9. **What widget is used to create a button with an icon in Flutter?**
   - `IconButton`

10. **How do you apply a background image to a container?**
    - Use the `BoxDecoration` with `DecorationImage`.

11. **How do you change the color of the text inside a `TextField`?**
    - Set the `style` property in the `TextField`.

12. **How do you add padding to a widget in Flutter?**
    - Use the `Padding` widget or the `padding` property.

13. **What property would you use to create rounded corners on a `TextField`?**
    - Use the `border` property with `OutlineInputBorder` and set `borderRadius`.

14. **How do you create a clickable text in Flutter?**
    - Use the `TextButton` widget.

15. **How do you change the background color of a `Scaffold`?**
    - Set the `backgroundColor` property in the `Scaffold`.

16. **How do you position widgets in a column in Flutter?**
    - Use the `Column` widget and set the `children` property.

17. **What widget can you use to make a widget scrollable in Flutter?**
    - `SingleChildScrollView`

18. **How do you style text in Flutter?**
    - Use the `TextStyle` class.

19. **How do you align widgets horizontally spaced apart in Flutter?**
    - Use a `Row` with `mainAxisAlignment: MainAxisAlignment.spaceBetween`.

20. **How do you set a custom font size for a `Text` widget?**
    - Use the `fontSize` property in `TextStyle`.


21. **How do you import assets (e.g., images) in a Flutter project?**
    - Add the asset paths to the `pubspec.yaml` file under the `assets` section.

22. **What is the purpose of the `MediaQuery` class in Flutter?**
    - It provides information about the size and orientation of the current screen.

23. **How do you center a widget within its parent in Flutter?**
    - Use the `Center` widget.

24. **How do you specify the size of an icon in Flutter?**
    - Use the `size` property of the `Icon` widget.

25. **How do you create a circular button in Flutter?**
    - Use the `CircleAvatar` widget.

26. **What widget is used to display an image from assets in Flutter?**
    - `Image.asset`

27. **How do you add margins to a widget in Flutter?**
    - Use the `Container` widget with the `margin` property.

28. **How do you make a `TextField` editable only by tapping an icon?**
    - Set `enabled` to `false` and use a `GestureDetector` to make it editable.

29. **How do you handle form validation in Flutter?**
    - Use the `Form` and `TextFormField` widgets with a `GlobalKey<FormState>`.

30. **What is the `Scaffold` widget used for in Flutter?**
    - It provides a structure for the basic material design layout.

31. **How do you display an error message under a `TextField`?**
    - Use the `errorText` property in `InputDecoration`.

32. **How do you apply a gradient background to a container in Flutter?**
    - Use the `BoxDecoration` with `LinearGradient`.

33. **How do you implement a loading indicator in Flutter?**
    - Use the `CircularProgressIndicator` or `LinearProgressIndicator`.

34. **How do you make a widget invisible but keep its space?**
    - Use `Visibility` with `visible` set to `false`.

35. **What property would you use to change the hint text color in a `TextField`?**
    - Set the `hintStyle` property in `InputDecoration`.

36. **How do you add a border to a `Container` in Flutter?**
    - Use the `BoxDecoration` with the `border` property.

37. **How do you change the color of the `AppBar`?**
    - Set the `backgroundColor` property in the `AppBar`.

38. **How do you add shadow to a `Text` widget in Flutter?**
    - Use the `shadow` property in `TextStyle`.

39. **How do you implement a dropdown menu in Flutter?**
    - Use the `DropdownButton` widget.

40. **How do you animate the transition between screens in Flutter?**
    - Use the `PageRouteBuilder` with custom transitions.

41. **How do you make text uppercase in a `Text` widget?**
    - Use the `toUpperCase()` method on the string.

42. **How do you handle user input in a `TextField`?**
    - Use a `TextEditingController`.

43. **How do you display a modal bottom sheet in Flutter?**
    - Use the `showModalBottomSheet` function.

44. **How do you navigate back to the previous screen in Flutter?**
    - Use `Navigator.pop(context);`.

45. **How do you set a default font for the entire app?**
    - Use the `theme` property in `MaterialApp`.

46. **How do you apply padding to all sides of a widget?**
    - Use the `EdgeInsets.all` constructor.

47. **What widget can you use to group multiple form fields?**
    - `Form`

48. **How do you handle long lists of items in Flutter?**
    - Use the `ListView` widget.

49. **How do you implement a clickable card in Flutter?**
    - Use the `InkWell` widget.

50. **How do you apply a box shadow to a container?**
    - Use the `BoxDecoration` with the `boxShadow` property.

51. **How do you display a snackbar in Flutter?**
    - Use the `ScaffoldMessenger.showSnackBar` function.

52. **How do you create a custom app theme in Flutter?**
    - Define a `ThemeData` and set it in the `theme` property of `MaterialApp`.

53. **How do you detect device orientation in Flutter?**
    - Use `MediaQuery.of(context).orientation`.

54. **How do you implement a tabbed interface in Flutter?**
    - Use the `TabBar` and `TabBarView` widgets with a `DefaultTabController`.

55. **How do you format dates in Flutter?**
    - Use the `DateFormat` class from the `intl` package.

56. **How do you customize the keyboard type for a `TextField`?**
    - Use the `keyboardType` property.

57. **How do you add a custom font to your Flutter app?**
    - Add the font files to the `assets` folder and update the `pubspec.yaml` file.

58. **How do you create a rounded button in Flutter?**
    - Use the `RoundedRectangleBorder` with `shape` property in `ButtonStyle`.

59. **How do you detect a tap outside a `TextField` to unfocus it?**
    - Use a `GestureDetector` with `onTap`.

60. **How do you display an alert dialog in Flutter?**
    - Use the `showDialog` function with an `AlertDialog` widget.

61. **How do you disable a button in Flutter?**
    - Set the `onPressed` property to `null`.

62. **How do you customize the cursor color in a `TextField`?**
    - Use the `cursorColor` property.

63. **How do you vertically center a widget in Flutter?**
    - Use the `Center` widget or `Align` with `alignment: Alignment.center`.

64. **How do you wrap text in a `Text` widget?**
    - Set the `softWrap` property to `true`.

65. **How do you create a horizontal list in Flutter?**
    - Use `ListView` with `scrollDirection: Axis.horizontal`.

66. **How do you create a floating action button in Flutter?**
    - Use the `FloatingActionButton` widget.

67. **How do you handle state in a Flutter app?**
    - Use state management solutions like `setState`, `Provider`, `Riverpod`, etc.

68. **How do you change the border color of a `TextField` when focused?**
    - Use the `focusedBorder` property in `InputDecoration`.

69. **How do you display an image from the internet in Flutter?**
    - Use `Image.network`.

70. **How do you add icons to a `TextField`?**
    - Use the `prefixIcon` or `suffixIcon` properties in `InputDecoration`.

71. **How do you apply a gradient to text in Flutter?**
    - Use `ShaderMask` with `LinearGradient` and `Text`.

72. **How do you limit the number of characters in a `TextField`?**
    - Use the `maxLength` property.

73. **How do you align text to the right in a `Text` widget?**
    - Set the `textAlign` property to `TextAlign.right`.

74. **How do you create a multi-line `TextField`?**
    - Set the `maxLines` property to a value greater than 1 or `null`.

75. **How do you handle form submission in Flutter?**
    - Use the `onSubmitted` property of `TextField`.

76. **How do you create an outlined button in Flutter?**
    - Use `OutlinedButton`.

77. **How do you handle user gestures in Flutter?**
    - Use the `GestureDetector` widget.

78. **How do you set the initial value of a `TextField`?**
    - Use a `TextEditingController`.

79. **How do you create a custom shape for a widget in Flutter?**
    - Use `ClipPath` with a custom `CustomClipper`.

80. **How do you create a staggered grid layout in Flutter?**
    - Use the `StaggeredGridView` widget from the `flutter_staggered_grid_view` package.

81. **How do you make text bold in a `Text` widget?**
    - Use the `fontWeight` property in `TextStyle` set to `FontWeight.bold`.

82. **How do you create a form with multiple input fields in Flutter?**
    - Use the `Form` widget with multiple `TextFormField` widgets.

83. **How do you clear the input in a `TextField`?**
    - Use a `TextEditingController` and call `clear()` method.

84. **How do you implement pagination in a list in Flutter?**
    - Use a `ScrollController` with `ListView` to detect the scroll position.

85. **How do you style a `TextButton` in Flutter?**
    - Use the `style` property with `ButtonStyle`.

86. **How do you add a leading icon to a list tile in Flutter?**
    - Use the `leading` property in `ListTile`.

87. **How do you add a trailing icon to a list tile in Flutter?**
    - Use the `tr

ailing` property in `ListTile`.

88. **How do you create a clickable link in Flutter?**
    - Use the `InkWell` or `GestureDetector` widgets with `launch` from `url_launcher` package.

89. **How do you implement a search bar in Flutter?**
    - Use a `TextField` with `onChanged` to filter search results.

90. **How do you make a widget fill the available space?**
    - Use the `Expanded` widget.

91. **How do you create a custom dialog in Flutter?**
    - Use the `showDialog` function with a custom `Widget`.

92. **How do you make text italic in a `Text` widget?**
    - Use the `fontStyle` property in `TextStyle` set to `FontStyle.italic`.

93. **How do you change the height of a `TextField`?**
    - Use the `contentPadding` property in `InputDecoration`.

94. **How do you create a collapsible panel in Flutter?**
    - Use the `ExpansionPanelList` and `ExpansionPanel` widgets.

95. **How do you change the shape of a `FloatingActionButton`?**
    - Use the `shape` property.

96. **How do you display a list with different types of items in Flutter?**
    - Use the `ListView.builder` with a custom item builder.

97. **How do you handle device back button presses in Flutter?**
    - Use the `WillPopScope` widget.

98. **How do you customize the scrollbar in Flutter?**
    - Use the `Scrollbar` widget with custom properties.

99. **How do you set the background color for the entire app?**
    - Set the `scaffoldBackgroundColor` in `ThemeData`.

100. **How do you validate an email format in a `TextField`?**
    - Use a regex pattern with the `validator` property in `TextFormField`. 