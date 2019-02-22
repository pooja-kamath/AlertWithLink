//
//  NSMutableAttributedString.swift
//  ClickableAlertTitle
//
//  Created by Audiology 5 on 22/02/19.
//  Copyright © 2019 Edureka. All rights reserved.
//

import Foundation
import UIKit
extension NSMutableAttributedString {
    
    public func SetAsLink(textToFind:String, linkURL:String) {
        
        let foundRange = self.mutableString.range(of: textToFind)
        if foundRange.location != NSNotFound {
            self.addAttribute(.link, value: linkURL, range: foundRange)
        }
    }
}

