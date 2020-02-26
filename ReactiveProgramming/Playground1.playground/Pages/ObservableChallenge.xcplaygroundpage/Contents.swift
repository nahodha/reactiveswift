import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let disposeBag = DisposeBag()

let ageObservable = Observable.from([32, 40, 20, 33, 80, 9, 3, 19, 5])

let ageObserver = ageObservable.subscribe(onNext: {
    let ageBy5 = $0 * 5
    print(ageBy5)
}).addDisposableTo(disposeBag)
