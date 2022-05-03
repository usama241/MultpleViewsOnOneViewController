//
//  ViewController.swift
//  Multiple Screens
//
//  Created by mackBook on 26/12/17.
//  Copyright mackBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SegOL: UISegmentedControl!

    @IBOutlet var sideview: UIView!
    var isSideViewOpen: Bool = false
  
    override func viewDidLoad() {
        super.viewDidLoad()
        sideview.isHidden = true
        isSideViewOpen = false
    }

    @IBAction func SegBtn(_ sender: UISegmentedControl) {
        if SegOL.selectedSegmentIndex == 0
        {
            sideview.isHidden=true
            sideview.frame = CGRect(x: 0, y: 88, width: self.view.frame.width, height: self.view.frame.height)
          }
        
        else if SegOL.selectedSegmentIndex == 1  {
            sideview.isHidden = false
            self.view.bringSubviewToFront(sideview)
            if !isSideViewOpen{
            isSideViewOpen = true//0
            sideview.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
            sideview.frame = CGRect(x: 0, y: 88, width: self.view.frame.width, height: self.view.frame.height)
                
       
            }
        }
    }
   
}

