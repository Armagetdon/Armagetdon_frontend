//
//  RegisterViewController.swift
//  Armagetdon
//
//  Created by 김나연 on 7/5/24.
//

import UIKit
import SnapKit

class RegisterViewController: UIViewController {
    
    private lazy var navBar: CustomNavigationBar2 = {
        let nav = CustomNavigationBar2()
        nav.translatesAutoresizingMaskIntoConstraints = false
        nav.backgroundColor = .white
        return nav
    }()
    
    private lazy var introLabel: UILabel = {
        let lb = UILabel()
        lb.text = "선플 업로드 하기 전 \n안내사항을 꼭 읽어주세요"
        lb.font = UIFont(name: "Pretendard-Bold", size: 20)
        lb.textColor = UIColor(named: "Mblack")
        lb.numberOfLines = 0
        return lb
    }()
    private lazy var introImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "intro")
        img.snp.makeConstraints{make in
            make.width.equalTo(311)
            make.height.equalTo(208)
        }
        return img
    }()
    /*
    private lazy var instructionsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Pretendard-Medium", size: 14)
        let icon = UIImage(named: "notice")
        let attachment = NSTextAttachment()
        attachment.image = icon
        attachment.bounds = CGRect(x: 0, y: -4, width: 32, height: 32)
        
        let iconString = NSAttributedString(attachment: attachment)
        let instructionTexts = [
            "해당 선플이 모두 보여지게 캡쳐를 해주세요.",
            "자신의 계정으로 작성한 댓글만 인정돼요.",
            "선플이 아닌 댓글일 시 패널티가 부여될 수 있어요.",
            "하나의 콘텐츠 당 하나의 선플만 인정돼요.",
            "선플을 작성한 콘텐츠의 링크를 같이 입력해주세요."
        ]
        
        let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = 12
        let attributedText = NSMutableAttributedString()
        for text in instructionTexts {
            attributedText.append(iconString)
            attributedText.append(NSAttributedString(string: " \(text)\n\n"))
        }
        
        label.attributedText = attributedText
        return label
    }()
    */
    private lazy var floatingButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "Rbtn")
        button.setTitle("다음", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Medium", size: 16)
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(floatingButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Rbackground")
        setupUI()
        setupConstraints()
    }
    
    private func setupUI() {
        view.addSubview(navBar)
        view.addSubview(introLabel)
        view.addSubview(introImg)
        view.addSubview(floatingButton)
    }
    
    private func setupConstraints() {
        navBar.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.height.equalTo(48)
        }
        introLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(152)
            make.left.trailing.equalToSuperview().inset(20)
        }
        introImg.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(36)
            make.left.equalToSuperview().inset(20)
        }
        
        floatingButton.snp.makeConstraints { make in
            make.width.equalTo(337)
            make.height.equalTo(54)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-32)
        }
    }
    
    @objc func floatingButtonTapped() {
        // Handle floating button tap
    }
}

