//
//  ViewController.swift
//  ClickableAlertTitle
//
//  Created by Audiology 5 on 22/02/19.
//  Copyright © 2019 Edureka. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let attributedString = NSMutableAttributedString(string:"Please Open this LINK!")
        attributedString.SetAsLink(textToFind: "LINK", linkURL: "http://stackoverflow.com")
        
        let alert: UIAlertView = UIAlertView(title: "Title", message: "message",
                                             delegate: self, cancelButtonTitle: "OK", otherButtonTitles: "Cancel")
        
        let Txt:UITextView = UITextView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        Txt.attributedText = attributedString;
        Txt.isEditable=false;
        Txt.dataDetectorTypes = UIDataDetectorTypes.link;
        
        alert.setValue(Txt, forKey: "accessoryView")
        alert.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




