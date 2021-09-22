//
//  UIStackView+.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach(addArrangedSubview(_:))
    }
}
