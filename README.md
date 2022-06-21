# iOS Junior Tech Challenge - Take Home Challenge

Thank you for your interest in taking the iOS Tech Challenge.

## Preparation 
Please, compile the project in Xcode and run it in your simulator of choice. You will find a working app prototype with 2 screens, accessible via the tab bar. This is the starting point for the challenge.

![tech_challenge_images 001](./img/tech_challenge_images.001.png)


Back in the project, locate the file `TransactionModel.swift` and have a look at the data model driving the app, the `TransactionModel`. Some sample transactions can be found in `ModelData.swift`. These are used to populate the list of transactions you have just seen.

## Assignments

General points to consider:
- follow the specs carefully
- focus on writing clean, maintainable code
- write your UI code in SwiftUI, not UIKit

### 1. Filtering buttons

Add a horizontally scrolling view with buttons for the different categories (shopping, entertainment, food, etc). When the user taps on each of these, the list below should show only the transactions for the selected category. Add a button for all categories as well.

Play the following video to see the feature in action (note: if seeing inside Xcode video may not show fully):

![](./img/category_filters.mp4)

Here are the design specs for the scrolling list of buttons and the buttons themselves:

![](./img/tech_challenge_images.002.png)


### 2. Floating sum view 

Add a floating view at the bottom of the list displaying the sum for the transactions belonging to the selected category. The sum should update when the user chooses the different categories.

Play the following video to see the feature in action:

![](./img/sum_summary_with_categories.mp4)

Here are the design specs for the floating view with the sum of the chosen transactions:

![tech_challenge_images 003](./img/tech_challenge_images.003.png)


### 3. Add a pin/unpin action to each transaction

By tapping on it, the UI should blend/unblend accordingly. The sum in the floating view at the bottom should only consider pinned transactions.

Play the following video to see the feature in action:

![](./img/pin_unpin_with_categories_and_sum.mp4)


Here are the design specs for the unpinned transaction view and the pin/unpin icon:

![tech_challenge_images 005](./img/tech_challenge_images.005.png)

### 4. Update the list in the insights tab to reflect expense in each category

The insights view should only consider pinned transactions.

![tech_challenge_images 007](./img/tech_challenge_images.007.png)


Make sure that the state between the transactions and the insights tab is kept consistent, as shown in this video capture:

![](./img/insights_tab_with_pinned_unpinned_views.mp4)

### 5. Unit tests 

Write unit test to verify:

- filtering of transactions according to category
- sum of transaction amounts for filtered category

## Wrapping up

Once you have completed the assignments, please follow the instructions provided. Please, make sure that your project is complete and it is ready to be compiled and tested using the latest stable version of Xcode.

Good luck!
