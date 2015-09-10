//
//  ViewController.swift
//  xib-practice
//
//  Created by Jonathan Wood on 9/9/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    // Properties
    var redVC: RedVC!
    
    // Outlets

    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadRed(sender: AnyObject) {
        redVC = RedVC(printStr: "Data from Blue")
        self.presentViewController(redVC, animated: true, completion: nil)
    }

}

