
import Foundation
import RxSwift

// just: 하나의 element만 방출
print("--------Just---------")
Observable<Int>.just(1)
    .subscribe(onNext: {
        print($0)
    })

// of: 하나 이상의 이벤트를 넣을 수 있음
print("--------Of1---------")
Observable<Int>.of(1, 2, 3, 4, 5)
    .subscribe(onNext: {
        print($0)
    })


// 하나의 array만을 방출할것이기 때문에 just와 같음
print("--------Of2---------")
Observable.of([1, 2, 3, 4, 5])
    .subscribe(onNext: {
        print($0)
    })

// array 형태의 element만 받음
print("--------From---------")
Observable.from(optional: [1, 2, 3, 4, 5])
    .subscribe(onNext: {
        print($0)
    })


print("--------Subscribe1---------")
Observable.of(1, 2, 3)
    .subscribe {
        print($0)
    }

print("--------Subscribe2---------")
Observable.of(1, 2, 3)
    .subscribe {
        if let element = $0.element {
            print(element)
        }
    }

print("--------Subscribe3---------")
Observable.of(1, 2, 3)
    .subscribe(onNext: {
        print($0)
    })

// 용도 : 1. 즉시 종료 2. 의도적으로 0개의 값을 리턴하고 싶을 때
print("--------empty---------")
Observable<Void>.empty()
    .subscribe {
        print($0)
    }

print("--------never---------")
Observable.never()
    .subscribe(onNext: {
        print($0)
    },
               onCompleted: {
        print("Completed")
    })

// start값부터 1씩 늘려가며 range를 만듦
print("--------range---------")
Observable.range(start: 1, count: 9)
    .subscribe(onNext: {
        print("2 * \($0) = \(2 * $0)")
    })

print("--------dispose---------")
Observable.of(1, 2, 3)
    .subscribe(onNext: {
        print($0)
    })
// 구독 취소 (이벤트 방출이 더이상 되지 않음)
    .dispose()

print("--------disposeBag---------")
let disposeBag = DisposeBag()

Observable.of(1, 2, 3)
    .subscribe {
        print($0)
    }
    .disposed(by: disposeBag)


print("--------create1---------")
Observable.create { observer -> Disposable in
    observer.onNext(1)
    observer.onCompleted()
    observer.onNext(2)
    return Disposables.create()
}
.subscribe {
    print($0)
}
.disposed(by: disposeBag)
