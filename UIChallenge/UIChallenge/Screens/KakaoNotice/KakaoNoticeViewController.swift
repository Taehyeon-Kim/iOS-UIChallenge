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
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Setup
    
    override func setupAttribute() {
        title = "김태현"
    }
    
    override func setupLayout() {
        view.addSubviews(contentView, chatInputView, noticeView)
        
        chatInputView.snp.makeConstraints {
            $0.left.right.bottom.equalToSuperview()
            $0.height.equalTo(70)
        }
        
        contentView.snp.makeConstraints {
            $0.left.right.top.equalToSuperview()
            $0.bottom.equalTo(chatInputView.snp.top)
        }
        
        noticeView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(topHeight + 10)    // 임의로 네비게이션 바 높이만큼 위치를 조정 (navigationBar height + offset)
            $0.left.equalToSuperview().offset(10)
            $0.right.equalToSuperview().inset(10)
            $0.height.equalTo(50)
        }
    }
    
    // MARK: - Properties
    
    var statusBarHeight: CGFloat {
        return UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    }
    
    var topInset: CGFloat {
        return UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0      // 디바이스 위쪽 여백 (Safe Area 위쪽 여백)
    }
    
    var navigationBarHeight: CGFloat {
        return UINavigationController().navigationBar.frame.height
    }
    
    var topHeight: CGFloat {
        return statusBarHeight + topInset + navigationBarHeight
    }
    
    // MARK: - UI Properties
    
    /// 컨텐츠 뷰
    private let contentView = UIView().then {
        $0.backgroundColor = .red
    }
    /// 채팅 입력 뷰
    private let chatInputView = UIView().then {
        $0.backgroundColor = .blue
    }
    /// 공지사항 뷰
    private let noticeView = UIView().then {
        $0.backgroundColor = .green
    }
}

// MARK: - Preview

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct KakaoNoticePreview: PreviewProvider {
    static var previews: some View {

        let naviVC = UINavigationController(rootViewController: KakaoNoticeViewController())
        naviVC.showPreview(.iPhone12)
            .edgesIgnoringSafeArea(.bottom)
    }
}
#endif
