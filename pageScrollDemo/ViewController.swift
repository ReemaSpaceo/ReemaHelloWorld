//
//  ViewController.swift
//  pageScrollDemo
//
//  Created by SOTSYS122 on 08/02/16.
//  Copyright © 2016 SOTSYS122. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var svMain: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width:CGFloat=self.svMain.frame.size.width
        let currentPage=round(self.svMain.contentOffset.x + (0.5 * width)) / width
        print("current pge is--->:\(Int(currentPage))")
        
        print("Hello")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn1Clicked(sender: AnyObject) {
        
        let y:CGFloat=self.view1.frame.origin.y
        let pageWidth:CGFloat=self.view1.frame.size.width
        
        self.svMain.setContentOffset(CGPointMake(CGFloat(1)*pageWidth,y), animated: true)
    }

    @IBAction func btn2Clicked(sender: AnyObject) {
        let y:CGFloat=self.view1.frame.origin.y
        let pageWidth:CGFloat=self.view1.frame.size.width
        
        self.svMain.setContentOffset(CGPointMake(CGFloat(0)*pageWidth,y), animated: true)
    }
}

