import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var behaviorSubject = BehaviorSubject(value: "Value A")

let sub1 = behaviorSubject.subscribe(onNext: {
    print("Subscription 1: \($0)")
})

behaviorSubject.onNext("Value B")
behaviorSubject.onNext("Value C")

let sub2 = behaviorSubject.subscribe(onNext: {
    print("Subscription 2: \($0)")
})

behaviorSubject.onNext("Both get this")
