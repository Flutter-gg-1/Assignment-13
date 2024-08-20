# Assignment 13

## Overview

This Flutter application provides a form for entering and validating credit card information. Upon submission, it displays the formatted card data in a dialog box. The application includes a form with input fields for card details and a button to trigger the display of the card information.

## Widgets Used

### `HomePage`

The `HomePage` widget is the primary component of the application. It contains a form for user input and a button to display card details.

#### Key Components:

1. **`Scaffold`**
   - Provides the basic visual layout structure with a background color.
   - `backgroundColor`: Sets the background color of the app to a light grey.

2. **`Form`**
   - Manages the state of the form and its fields.
   - `key`: Uses a `GlobalKey<FormState>` to manage form validation and state.

3. **`Container`**
   - Styles the form with a white background, rounded corners, and padding.
   - `height` and `width`: Specifies the dimensions of the container.
   - `decoration`: Includes background color, border radius, and other styling properties.

4. **`TextFormField`**
   - Used for user input. There are four fields:
     - **Card Number**: Takes a 16-digit card number.
       - `validator`: Ensures the card number is 16 digits long.
     - **Expired Date (MM)**: Takes the expiration month of the card.
       - `validator`: Ensures the month is exactly 2 digits.
     - **Expired Date (YY)**: Takes the expiration year of the card.
       - `validator`: Ensures the year is exactly 2 digits.
     - **Card Holder**: Takes the name of the cardholder.
       - `validator`: Ensures the name does not contain numbers.

5. **`GestureDetector`**
   - Wraps the button to handle tap events and trigger the display of card details.
   - `onTap`: Validates the form and shows a dialog if the data is valid.

6. **`Container`** (Inside `GestureDetector`)
   - Styles the button that triggers the card details dialog.
   - `height` and `width`: Specifies the dimensions of the button.
   - `decoration`: Includes a gradient background, border radius, and shadow effects.

7. **`AlertDialog`**
   - Displays a dialog box with card details formatted in a visually styled manner.
   - `content`: Includes a container with card information and a decorative element.

8. **`Stack`**
   - Used to overlay the card information with a decorative element (a border) on the dialog.
   - `Positioned`: Positions the decorative element relative to the dialog.

## Helper Methods

### `formatCardNumber`

Formats a card number by grouping digits into chunks of four separated by spaces.

- **Parameters:**
  - `number`: The raw card number string.
- **Returns:**
  - A formatted card number string with spaces after every four digits.

## Screen recording

<video controls src="assets/Screen_Recording_20240821-012426.mp4" width="300" height="700">
