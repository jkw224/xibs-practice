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
    var yellowVC: YellowVC!
    var _printStr = ""
    
    // ---- Outlets ----
    @IBOutlet weak var printLblRed: UILabel!
    @IBOutlet weak var goToYellowBtn: UIButton!
    
    // ---- Actions ----
    @IBAction func goToYellowBtn(sender: AnyObject) {
        yellowVC = YellowVC(printYellowStr: "Data from Red")
        self.presentViewController(yellowVC, animated: true, completion: nil)
    }
    
    // ---- Functions ----
    
    
    // ---- Load Funcs ----
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        printLblRed.text = _printStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ---- Xib Init ----
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(printStr: String) {
        self.init(nibName: "RedVC" , bundle: nil)
        self._printStr = printStr
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
