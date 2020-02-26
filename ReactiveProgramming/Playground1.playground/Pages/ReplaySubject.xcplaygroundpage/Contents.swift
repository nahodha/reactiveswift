import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var accountSubject = ReplaySubject<Double>.create(bufferSize: 3)

var accountManager = accountSubject.subscribe(onNext: {
    print("Transaction amount: $\($0)")
})

accountSubject.onNext(23.44)
accountSubject.onNext(299.32)
accountSubject.onNext(93.30)
accountSubject.onNext(39.2)
accountSubject.onNext(2.32)


var lastThreeTx = accountSubject.subscribe(onNext: {
    print("Last 3 - Transaction amount: $\($0)")
})
