//
//  SelectedCircle.swift
//  ADVIS
//
//  Created by Tatsumi Nishida on 4/2/19.
//  Copyright © 2019 Tatsumi. All rights reserved.
//

import Foundation
import UIKit

/**
 選択中の箇所を示すクラス
 */
class SelectedCircle: UIView {
    /// X座標
    var startX: Double = 0
    /// Y座標
    var startY: Double = 0

    /**
     線を描画するための座標を設定

     - Parameter startX: X座標
     - Parameter startY: Y座標

     メンバ変数にそれぞれ代入
     */
    func intoBoardPoint(startX: Double, startY: Double) {
        self.startX = startX
        self.startY = startY
    }

    override func draw(_: CGRect) {
        // 選択されているところ
        let selectedCircle = UIBezierPath(arcCenter: CGPoint(x: startX, y: startY), radius: 10, startAngle: 0, endAngle: CGFloat(Double.pi) * 2, clockwise: true)
        selectedCircle.lineWidth = 3
        UIColor.purple.setFill()
        selectedCircle.fill()
        UIColor.purple.setStroke()
        selectedCircle.stroke()
    }
}
