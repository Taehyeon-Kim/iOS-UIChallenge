//
//  KakaoNoticeViewController.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

/*
 다음 뷰는 카카오톡 공지 UI를 따라해 본 것입니다.
 
 - Animation
 - layoutIfNeeded vs setNeedsLayout
 */

import UIKit

class KakaoNoticeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func setupAttribute() {
        view.backgroundColor = .red
    }
    
    override func setupLayout() {
        
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct KakaoNoticePreview: PreviewProvider {
    static var previews: some View {

        KakaoNoticeViewController()
            .showPreview(.iPhone12)
    }
}
#endif
