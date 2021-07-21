//
//  SampleView.swift
//  SampleApp
//
//  Created by Gabriel Mori Baleta on 7/21/21.
//

import UIKit

class SampleView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var label: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("SampleView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        //self.label.attributedText = NSAttributedString(string: "Sample Label")
        self.label.text = "Sample Label"
    }

}
