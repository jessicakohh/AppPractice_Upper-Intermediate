//
//  UICollectionViewCell.swift
//  Outstagram
//
//  Created by juyeong koh on 2023/01/03.
//

import SnapKit
import UIKit

final class ProfileCollectionViewCell: UICollectionViewCell {
    private let imageView = UIImageView()
    
    func setup(with image: UIImage) {
        addSubview(imageView)
        imageView.snp.makeConstraints { $0.edges.equalToSuperview() }
        imageView.backgroundColor = .tertiaryLabel
    }
}
