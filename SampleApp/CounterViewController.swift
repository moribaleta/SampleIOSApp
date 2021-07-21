//
//  CounterViewController.swift
//  SampleApp
//
//  Created by Gabriel Mori Baleta on 7/21/21.
//

import Foundation
import UIKit


public class CounterViewController : UIViewController {
    
    @IBOutlet weak var sampleview: SampleView!
    @IBOutlet weak var button: UIButton!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let random : UIColor = .random()
        self.view.backgroundColor = random
        
        //sampleview.label.text = random.toHexString()
        
        let sample          = SampleView()
        sample.label.text   = random.toHexString()
        
        self.view.addSubview(sample)
        
        sample.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        sample.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive       = true
        sample.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive   = true
        sample.heightAnchor.constraint(equalToConstant: 50).isActive = true
        sample.translatesAutoresizingMaskIntoConstraints = false
        //self.view.setNeedsLayout()
    
    }
    
}


extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
    
    func toHexString() -> String {
                var r:CGFloat = 0
                var g:CGFloat = 0
                var b:CGFloat = 0
                var a:CGFloat = 0

                getRed(&r, green: &g, blue: &b, alpha: &a)

                let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0

                return String(format:"#%06x", rgb)
            }
}
