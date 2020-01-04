import UIKit
import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true

//for i in 0..<10 {
//    Thread.detachNewThread {
//        print(i)
//    }
//}

//class ObjectThread {
//    func threadTest() -> Void {
//        let thread = Thread(target: self, selector: #selector(threadWorker), object: nil)
//        thread.start()
//    }
//
//    @objc func threadWorker() -> Void {
//        print("threadWorker")
//    }
//}
//
//let obj = ObjectThread()
//obj.threadTest()

//class ObjecttOperation {
//    func test() -> Void {
////        let operation = BlockOperation { [weak self] in
////            self?.threadWorker()
////        }
//        let operation = MyOperation()
//
//        let queue = OperationQueue()
//        queue.addOperation(operation)
//    }
//
//    @objc func threadWorker() -> Void {
//        sleep(1)
//        print("threadWorker")
//    }
//}
//
//class MyOperation: Operation{
//    override func main() {
//        sleep(1)
//        print("in MyOperation main")
//    }
//}
//
//let obj = ObjecttOperation()
//obj.test()
//print("after invoke test")

let queue = DispatchQueue(label: "myqueue", qos: DispatchQoS.default, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.inherit, target: nil)

queue.asyncAfter(deadline: .now() + 1) {
    print("in asyncAfter")
}

print("after invoke queue method")



