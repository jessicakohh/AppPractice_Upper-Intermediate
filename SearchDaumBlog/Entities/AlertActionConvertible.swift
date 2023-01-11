//
//  AlertActionConvertible.swift
//  SearchDaumBlog
//
//  Created by juyeong koh on 2023/01/11.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
