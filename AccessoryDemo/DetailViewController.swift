//
//  DetailViewController.swift
//  AccessoryDemo
//
//  Created by Sabatino Masala on 25/06/15.
//  Copyright © 2015 Sabatino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  weak var accessoryView: UITextView?;
  
  override var inputAccessoryView: UIView? {
    get {
      
      if self.accessoryView == nil {
        let accessoryView = UITextView(frame: CGRectMake(0, 0, 0, 50));
        self.accessoryView = accessoryView;
        self.accessoryView?.text = "This is some text";
      }
      
      return self.accessoryView;
    }
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated);
  }
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
  }
  
  override func canBecomeFirstResponder() -> Bool {
    return true;
  }
  
  override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated);
  }
  
}
