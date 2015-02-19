//
//  ViewController.swift
//  dynamic-types
//
//  Created by Fernando Ribeiro on 2/18/15.
//  Copyright (c) 2015 GetNinjas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "didReceiveUIContentSizeCategoryDidChangeNotification:", name: UIContentSizeCategoryDidChangeNotification, object: nil)
        
        self.setAndUpdateFontStyle()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didReceiveUIContentSizeCategoryDidChangeNotification(notifcation: NSNotification) {
        self.setAndUpdateFontStyle()
    }
    
    func setAndUpdateFontStyle()
    {
        let descriptorFontBody = UIFontDescriptor.preferredFontDescriptorWithTextStyle(UIFontTextStyleBody)
        let descriptionFontBodySize = descriptorFontBody.pointSize;
        let bodyFont = UIFont(name: "Zapfino", size: descriptionFontBodySize)
        
        label.font = bodyFont;
    }
}
