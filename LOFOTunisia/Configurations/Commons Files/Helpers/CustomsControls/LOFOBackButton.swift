//
//  LOFOBackButton.swift
//  LOFOTunisia
//
//  Created by walid sassi on 3/17/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import UIKit

@IBDesignable  class LOFOBackButton: UIButton {
  override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    func sharedInit() {
        self.layer.cornerRadius = 5
        self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        self.backgroundColor = .white
        self.setBackgroundImage(UIImage(named:"backImage"), for: .normal)
        self.contentMode = .center
        self.imageView?.contentMode = .scaleAspectFit
    }
    
}
