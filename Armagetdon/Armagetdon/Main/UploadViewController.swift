//
//  UploadViewController.swift
//  Armagetdon
//
//  Created by 이상엽 on 7/4/24.
//

import Foundation
import UIKit
import SnapKit

class UploadViewController: UIViewController{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let upLoadGuideLabel = UILabel()
        upLoadGuideLabel.text = "선플 업로드하기 전 안내 사항을 꼭 읽어주세요"
        upLoadGuideLabel.font = UIFont.systemFont(ofSize: 20)
        upLoadGuideLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.left.equalToSuperview().offset(50)
        }
        
        let upLoadGuideDetailLabel = UILabel()
        upLoadGuideDetailLabel.text = "해당 선플이 모두 보여지게 캡쳐를 해주세요."
        let upLoadGuideDetailLabel2 = UILabel()
        upLoadGuideDetailLabel2.text = "자신의 계정으로 작성한 댓글에만 인정돼요."
        let upLoadGuideDetailLabel3 = UILabel()
        upLoadGuideDetailLabel3.text = "선플이 아닌 댓글일 시 패널티가 부여될 수 있어요."
        let upLoadGuideDetailLabel4 = UILabel()
        upLoadGuideDetailLabel4.text = "하나의 콘텐츠 당 하나의 선플만 인정돼요."
        let upLoadGuideDetailLabel5 = UILabel()
        upLoadGuideDetailLabel5.text = "선플을 작성한 콘텐츠의 링크를 같이 입력해주세요."
        
        let labelStackView = UIStackView(arrangedSubviews: [
                    upLoadGuideDetailLabel,
                    upLoadGuideDetailLabel2,
                    upLoadGuideDetailLabel3,
                    upLoadGuideDetailLabel4,
                    upLoadGuideDetailLabel5
                ])
            labelStackView.axis = .vertical
            labelStackView.alignment = .fill
            labelStackView.spacing = 8
            labelStackView.distribution = .equalSpacing
        
        view.addSubview(labelStackView)
        
        // SnapKit을 사용하여 스택 뷰의 레이아웃 설정
        labelStackView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
    
}



