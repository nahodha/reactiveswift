import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var publishSubject = PublishSubject<String>()

publishSubject.onNext("Hello")

let pubSubSubscription = publishSubject.subscribe(onNext: {
    print($0)
})

publishSubject.onNext("Here we are")
publishSubject.onNext("Yaayyyy")

let pubSub2 = publishSubject.subscribe(onNext: {
    print("2 - \($0)")
})

publishSubject.onNext("both get this message")
