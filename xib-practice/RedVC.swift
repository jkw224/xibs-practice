//
//  redVC.swift
//  xib-practice
//
//  Created by Jonathan Wood on 9/9/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class RedVC: UIViewController {
    // Properties
    var yellowVC: YellowVC
    
    // Outlets
    @IBOutlet weak var printLblRed: UILabel!
    var printStr = ""
    
    // ---- Xib Init ----
    convenience init(printStr: String) {
        self.init(nibName: "RedVC" , bundle: nil)
        self.printStr = printStr
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    

    
    // ---- Orig Functions ----
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        printLblRed.text = printStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
