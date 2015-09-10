//
//  yellowVC.swift
//  xib-practice
//
//  Created by Jonathan Wood on 9/9/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    // ---- Properties ----
    var _printYellowString = ""
    
    // ---- Outlets ----
    @IBOutlet weak var printYellowLbl: UILabel!
    
    // ---- Actions ----
    
    
    // ---- Functions ----
    
    
    // ---- Load Funcs ----
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        printYellowLbl.text = _printYellowString
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
    
    convenience init(printYellowStr: String) {
        self.init(nibName: "YellowVC", bundle: nil)
        self._printYellowString = printYellowStr
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
