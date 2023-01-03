//
//  ProfileDataView.swift
//  Outstagram
//
//  Created by juyeong koh on 2023/01/03.
//

import UIKit
import SnapKit

final class ProfileDataView: UIView {
    
    private let title: String
    private let count: Int
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
        label.text = "팔로워"
        
        return label
    }()
    
    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16.0, weight: .bold)
        label.text = "\(count)"
        
        return label
    }()
    
    init(title: String, count: Int) {
        self.title = title
        self.count = count
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


private extension ProfileDataView {
    func setupLayout() {
        let stackView = UIStackView(arrangedSubviews: [countLabel, titleLabel])
        // 방향: 세로
        stackView.axis = .vertical
        // 정렬: 가운데
        stackView.alignment = .center
        stackView.spacing = 4.0
        
        addSubview(stackView)
        stackView.snp.makeConstraints{ $0.edges.equalToSuperview() }
        
    }
}

