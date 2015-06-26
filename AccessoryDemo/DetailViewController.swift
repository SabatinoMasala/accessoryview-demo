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
  weak var dummyAccessoryView: UITextView?;
  
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
  
  override func viewDidLoad() {
    
    self.inputAccessoryView?.hidden = true;
    
    let dummyAccessoryView = UITextView(frame: CGRectZero);
    self.view.addSubview( dummyAccessoryView );
    self.dummyAccessoryView = dummyAccessoryView;
    self.setupConstraintsForDummyAccessoryView();
    self.dummyAccessoryView?.text = "This is some text";
    
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated);
    
    self.dummyAccessoryView?.removeFromSuperview();
    self.inputAccessoryView?.hidden = false;
    
  }
  
  func setupConstraintsForDummyAccessoryView() {
    
    if let dummyAccessoryView = self.dummyAccessoryView {
      
      let widthConstraint: NSLayoutConstraint = NSLayoutConstraint(
        item: dummyAccessoryView,
        attribute: NSLayoutAttribute.Width,
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.view,
        attribute: NSLayoutAttribute.Width,
        multiplier: 1.0,
        constant: 0
      );
      let heightConstraint: NSLayoutConstraint = NSLayoutConstraint(
        item: dummyAccessoryView,
        attribute: NSLayoutAttribute.Height,
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.view,
        attribute: NSLayoutAttribute.Height,
        multiplier: 0,
        constant: 50
      );
      let bottomConstraint: NSLayoutConstraint = NSLayoutConstraint(
        item: dummyAccessoryView,
        attribute: NSLayoutAttribute.Bottom,
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.view,
        attribute: NSLayoutAttribute.Bottom,
        multiplier: 1.0,
        constant: 0
      );
      let leftConstraint: NSLayoutConstraint = NSLayoutConstraint(
        item: dummyAccessoryView,
        attribute: NSLayoutAttribute.Left,
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.view,
        attribute: NSLayoutAttribute.Left,
        multiplier: 1.0,
        constant: 0
      );
      
      dummyAccessoryView.translatesAutoresizingMaskIntoConstraints = false;
      
      self.view.addConstraints([widthConstraint, heightConstraint, leftConstraint, bottomConstraint]);
      
    }
    
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
