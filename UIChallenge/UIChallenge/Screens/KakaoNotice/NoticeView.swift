//
//  NoticeView.swift
//  UIChallenge
//
//  Created by taehy.k on 2021/09/22.
//

import UIKit

protocol NoticeViewDelegate {
    func isTapped(flag: Bool)
}

public class NoticeView: UIView {
    
    // MARK: - Properties
    var toggleClosures: (() -> Void)?
    var delegate: NoticeViewDelegate?
    var flag: Bool = false
    
    // MARK: - UI Properties
    private lazy var containerView = UIView().then {
        $0.backgroundColor = .clear
        
        $0.addSubviews(noticeIcon, noticeLabel, toggleButton, authorLabel, buttonsStackView)
        
        noticeIcon.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.left.equalToSuperview().offset(16)
            $0.height.width.equalTo(24)
        }
        
        toggleButton.snp.makeConstraints {
            $0.centerY.equalTo(noticeIcon.snp.centerY)
            $0.right.equalToSuperview().inset(16)
            $0.height.width.equalTo(16)
        }
        
        noticeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.left.equalTo(noticeIcon.snp.right).offset(12)
            $0.right.equalTo(toggleButton.snp.left).offset(-12)
        }
        
        authorLabel.snp.makeConstraints {
            $0.left.equalTo(noticeLabel.snp.left)
            $0.top.equalTo(noticeLabel.snp.bottom).offset(5)
        }
        
        buttonsStackView.snp.makeConstraints {
            $0.left.right.equalToSuperview()
            $0.top.equalTo(authorLabel.snp.bottom).offset(5)
        }
    }
    
    private let noticeIcon = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.image = UIImage(named: "megaphone")
    }
    
    let noticeLabel = UILabel().then {
        $0.text = "DUMMY TEXT, DUMMY TEXT, DUMMY TEXT, DUMMY TEXT, DUMMY TEXT"
        $0.textColor = .black
        $0.numberOfLines = 2
        $0.lineBreakMode = .byClipping
        $0.font = UIFont.systemFont(ofSize: 16)
    }
    
    let toggleButton = UIButton().then {
        $0.setImage(UIImage(named: "down-arrow"), for: .normal)
        $0.addTarget(self, action: #selector(toggleButtonTapped), for: .touchUpInside)
    }
    
    private let authorLabel = UILabel().then {
        $0.text = "김태현님이 등록"
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.isHidden = true
    }
    
    private lazy var buttonsStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.isHidden = true
        $0.addArrangedSubviews(neverOpenButton, closeButton)
        
        neverOpenButton.snp.makeConstraints {
            $0.height.equalTo(40)
        }
        
        closeButton.snp.makeConstraints {
            $0.height.equalTo(40)
        }
    }
    
    private let neverOpenButton = UIButton().then {
        $0.setTitle("다시 열지 않음", for: .normal)
        $0.setTitleColor(.darkGray, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        $0.titleLabel?.textAlignment = .center
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    private let closeButton = UIButton().then {
        $0.setTitle("접어두기", for: .normal)
        $0.setTitleColor(.darkGray, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        $0.titleLabel?.textAlignment = .center
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    // MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAttributes()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupAttributes() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 3
    }
    
    private func setupLayout() {
        addSubviews(containerView)
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // MARK: - Actions
    @objc func toggleButtonTapped() {
        self.flag.toggle()
        delegate?.isTapped(flag: self.flag)
    }
    
    func showProperties() {
        authorLabel.isHidden = false
        buttonsStackView.isHidden = false
    }
    
    func hideProperties() {
        authorLabel.isHidden = true
        buttonsStackView.isHidden = true
    }
}
