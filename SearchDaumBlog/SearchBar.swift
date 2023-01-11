//
//  SearchBar.swift
//  SearchDaumBlog
//
//  Created by juyeong koh on 2023/01/11.
//

import RxCocoa
import RxSwift
import UIKit

// 서치바에서 들어오는 텍스트를 메인 뷰가 알 수 있도록 하는 텍스트 이벤트
// 텍스트를 입력한다고 다 보내주는게 아니라 검색 버튼을 눌렀을 때만 전달


class SearchBar: UISearchBar {
    let disposeBag = DisposeBag()
    
    let searchButton = UIButton()
    
    // 첫 번째 옵저버블 : SearchBar 버튼 탭 이벤트
    let searchButtonTapped = PublishRelay<Void>()
    
    // SearchBar 외부로 내보낼 이벤트
    var shouldLoadResult = Observable<String>.of("")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bind() {
        // search바에 searchButton tapped
        // button tapped
        Observable
            .merge(
                self.rx.searchButtonClicked.asObservable(),
                searchButton.rx.tap.asObservable()
            )
            .bind(to: searchButtonTapped)
            .disposed(by: disposeBag)
        
        searchButtonTapped
            .asSignal()
            .emit(to: self.rx.endEditing)
            .disposed(by: disposeBag)
        
        self.shouldLoadResult = searchButtonTapped
            .withUnretained(self.rx.text) { $1 ?? "" }
    }
    
    private func attribute() {
        

    }
    
    private func layout() {
        
    }
    
    
}


extension Reactive where Base: SearchBar {
    var endEditing: Binder<Void> {
        return Binder(base) { base, _ in
            base.endEditing(true)
        }
    }
}
