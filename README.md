# accessoryview-demo
Demo of the InputAccessoryView with a UITextView bug

This HackFix branch is a workaround for said issue.
We achieve this workaround by adding a dummy textfield to the view hierarchy, which we then remove on ViewDidAppear.
On ViewDidAppear we also show the InputAccessoryView, which was hidden beforehand.
