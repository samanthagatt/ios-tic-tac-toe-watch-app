# Tic Tac Toe - WatchOS Extension

## Introduction

The goal of this project is to add a WatchOS extension to the Tic Tac Toe iOS app that allows the user to play Tic Tac Toe on their Apple Watch.

## Screen Recording

![](https://user-images.githubusercontent.com/16965587/47415409-9865a380-d730-11e8-95cf-a34b527d3fbe.gif)

Here is an example implementation of the app. You don't have to make your implementation exactly as shown in this screen recording.

## Instructions

Please fork and clone this repository. Use the provided Xcode project in the repo. Commit regularly as you complete the requirements in this project.

1. Create a new WatchKit App target in the project. when adding the target, uncheck "Include Notification Scene" and "Include Complication" if they are checked.
2. In the Interface.storyboard, lay out the UI elements necessary to play Tic Tac Toe, restart the game, and show whose turn it is along with who won. 
3. Create a Cocoa Touch Subclass of `WKInterfaceController` and add the necessary outlets and actions from the Interface.storyboard.
4. In order to avoid repeating yourself, you can use the code already written in the iOS app target for the game logic. Think about which parts you will need and add those files to the WatchOS extension target.
5. Wire up the views in your interface controller and make sure the game works properly in all scenarios.


## Go Further

- Add a second interface controller that will show a history of the games played (along with the functionality to make it work). 
- Add a complication to the watch app. This could show who won the last game, a simple string that says "Play Tic Tac Toe", or whatever you want.
