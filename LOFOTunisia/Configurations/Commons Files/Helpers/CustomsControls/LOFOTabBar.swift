//
//  TabBarShape.swift
//  LOFOTunisia
//
//  Created by walid sassi on 1/18/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import UIKit
@IBDesignable
class LOFOTabBar: UIView {
    private var shapeLayer: CALayer?
    override func draw(_ rect: CGRect) {
        addShape()
    }
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 2.0
        //The below 4 lines are for shadow above the bar. you can skip them if you do not want a shadow
        shapeLayer.shadowOffset = CGSize(width: 0, height: 0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor.gray.cgColor
        shapeLayer.shadowOpacity = 0.3
        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
    }
    func createPath() -> CGPath {
        let height: CGFloat = 20.0
        let path = UIBezierPath()
        let centerWidth = self.frame.width / 2
        path.move(to: CGPoint(x: 0, y: 0)) // start top left
        path.addLine(to: CGPoint(x: (centerWidth - height * 2), y: 0)) // the beginning of the trough

        path.addCurve(to: CGPoint(x: centerWidth, y: -height),
        controlPoint1: CGPoint(x: centerWidth - height * 2, y: 0),
        controlPoint2: CGPoint(x: centerWidth - height, y: -height))

        path.addCurve(to: CGPoint(x: centerWidth + height * 2, y: 0),
        controlPoint1: CGPoint(x: centerWidth, y: -height),
        controlPoint2: CGPoint(x: (centerWidth + height), y: -height))

        path.addLine(to: CGPoint(x: self.frame.width, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        path.close()

        return path.cgPath
    }
}
