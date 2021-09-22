//
//  BaseViewController.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

/*
 [코드 출처] : https://github.com/mash-up-kr/YourName-iOS/
 */

import UIKit

import Then
import SnapKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAttribute()
        setupLayout()
    }
    
    /// set up attribute(property) of subviews
    ///
    ///     textLabel.text = "Hello, world"
    ///     textLabel.textColor = .systemBlue
    func setupAttribute() {
        fatalError("attribute() has not been implemented")
    }
    
    /// set up layout of subviews
    ///
    ///       view.addSubview(textLabel)
    ///       textLabel.translatesAutoresizingMaskIntoConstraints = false
    ///       NSLayoutConstraint.activate([
    ///           textLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ///           textLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
    ///       ])
    func setupLayout() {
        fatalError("layout() has not been implemented")
    }
}
