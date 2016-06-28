//
//  DotLineView.swift
//  DotLineView
//
//  Created by Kenji Abe on 2016/06/28.
//  Copyright © 2016年 Kenji Abe. All rights reserved.
//

import UIKit

@IBDesignable
public class DottedLineView: UIView {

    @IBInspectable
    public var lineColor: UIColor = UIColor.blackColor()
    
    @IBInspectable
    public var lineWidth: CGFloat = CGFloat(4)
    
    @IBInspectable
    public var round: Bool = false
    
    @IBInspectable
    public var horizontal: Bool = true
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        initBackgroundColor()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initBackgroundColor()
    }
    
    override public func prepareForInterfaceBuilder() {
        initBackgroundColor()
    }

    override public func drawRect(rect: CGRect) {

        let path = UIBezierPath()
        path.lineWidth = lineWidth

        if round {
            configureRoundPath(path, rect: rect)
        } else {
            configurePath(path, rect: rect)
        }

        lineColor.setStroke()
        
        path.stroke()
    }

    func initBackgroundColor() {
        if backgroundColor == nil {
            backgroundColor = UIColor.clearColor()
        }
    }
    
    private func configurePath(path: UIBezierPath, rect: CGRect) {
        if horizontal {
            let center = rect.height * 0.5
            let drawWidth = rect.size.width - (rect.size.width % (lineWidth * 2)) + lineWidth
            let startPositionX = (rect.size.width - drawWidth) * 0.5 + lineWidth
            
            path.moveToPoint(CGPoint(x: startPositionX, y: center))
            path.addLineToPoint(CGPoint(x: drawWidth, y: center))
            
        } else {
            let center = rect.width * 0.5
            let drawHeight = rect.size.height - (rect.size.height % (lineWidth * 2)) + lineWidth
            let startPositionY = (rect.size.height - drawHeight) * 0.5 + lineWidth
            
            path.moveToPoint(CGPoint(x: center, y: startPositionY))
            path.addLineToPoint(CGPoint(x: center, y: drawHeight))
        }
        
        let dashes: [CGFloat] = [lineWidth, lineWidth]
        path.setLineDash(dashes, count: dashes.count, phase: 0)
        path.lineCapStyle = CGLineCap.Butt
    }
    
    private func configureRoundPath(path: UIBezierPath, rect: CGRect) {
        if horizontal {
            let center = rect.height * 0.5
            let drawWidth = rect.size.width - (rect.size.width % (lineWidth * 2))
            let startPositionX = (rect.size.width - drawWidth) * 0.5 + lineWidth
            
            path.moveToPoint(CGPoint(x: startPositionX, y: center))
            path.addLineToPoint(CGPoint(x: drawWidth, y: center))
            
        } else {
            let center = rect.width * 0.5
            let drawHeight = rect.size.height - (rect.size.height % (lineWidth * 2))
            let startPositionY = (rect.size.height - drawHeight) * 0.5 + lineWidth
            
            path.moveToPoint(CGPoint(x: center, y: startPositionY))
            path.addLineToPoint(CGPoint(x: center, y: drawHeight))
        }

        let dashes: [CGFloat] = [0, lineWidth * 2]
        path.setLineDash(dashes, count: dashes.count, phase: 0)
        path.lineCapStyle = CGLineCap.Round
    }
    
}
