# accessoryview-demo
Demo of the InputAccessoryView with a UITextView bug

When showing the detail for the first time, the inputAccessoryView will render the text immediately, when you go back and try it again, the text doesn't get rendered until the animation completes.

--

# Update
Take a look at the HackFix branch for a workaround.
We achieve this workaround by adding a dummy textfield to the view hierarchy, which we then remove on ViewDidAppear.
On ViewDidAppear we also show the InputAccessoryView, which was hidden beforehand.
