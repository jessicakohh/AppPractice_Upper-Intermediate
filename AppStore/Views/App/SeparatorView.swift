//
//  SeparatorView.swift
//  AppStore
//
//  Created by juyeong koh on 2022/11/06.
//

import SnapKit
import UIKit

 class SeparatorView: UIView {
    
    private lazy var separator: UIView = {
        let separator = UIView()
        separator.backgroundColor = .separator

        return separator
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(separator)
        separator.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalTo(0.5)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
