//
//  UIView+.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//


import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview(_:))
    }
}
