# My Portfolio 

## Table of contents

- [Overview](#overview)
  - [The App](#the-app)
  - [Links](#links)
- [My process](#my-process)
  - [Built with](#built-with)
  - [Challenges](#challenges)
  - [Continued development](#continued-development)

## Overview

### The App

This app is an interactive version of my resume which shows my name, picture, about me, social links and skills. The app features a light and dark mode which can be adjusted using the icon on appBar. It also shows a different view when the device is rotated ie Landscape view

The codebase is divided into assets components and screens folders, main.dart and theme files. 
 - Asset folder: Contains the images and custom fonts used. 
 - Component folder: Contains the pages for about me, social links, homebuttons for both Portrait and Landscape views
 - Screens folder: Contains the homepage views for Portait and Landscape views.
 - portfoliotheme: contains the code for themes
 - main.dart: This is the main file through which the app runs from. 

The code is based on Flutter and dart which are used to build highly responsive applications.
Orientation was achieved using OrientationBuilder.
Packages used include:
 1. Url Launcher: It is a flutter plugin used to launch URLs. It was used in this app to launch the links embedded in the social media icons displayed in the home screen.
 2. Google fonts: Used to get the fonts i used in the app



### Links

- APK file Link: [APK file](https://drive.google.com/file/d/1vBCupr5zHMTqq8WSgjOYYHHUq6Ai4qWS/view?usp=sharing)
- Appetize URL: [Appetize](https://appetize.io/app/4isjvcodf4o24276gg6v4ma4bq?device=pixel4&osVersion=12.0&scale=75)

## My process

I came up with the design myself. The design shows a background image with an opacity of 0.5 and on it is a stack of widgets displaying my name and what I do, buttons to link to about me screens and social icon links.

### Built with

- Flutter
- Dart

### Challenges

- Making the landscape orientation's UI responsive. I solved it by completing rebuilding and adding new components specifically for the landscape view

### Continued development

If i had more time, I would have worked on the My work page to display all the works i have done so far. I would have also added more pages like educational background, work experience and a separate contact me page.



