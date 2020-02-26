import PlaygroundSupport
import RxSwift

let disposeBag = DisposeBag()
let numberSequence = Observable.just(5)

let numberSubscription = numberSequence.subscribe(onNext: {
    print($0)
    }).addDisposableTo(disposeBag)



let HelloSequence = Observable.from(["H", "e", "l", "l", "0"])
let HelloSubscription = HelloSequence.subscribe { (event) in
    switch event {
    case .next(let value):
        print(value)
    case .error(let error):
        print(error)
    case .completed:
        print("completed")
    }
}.addDisposableTo(disposeBag)
