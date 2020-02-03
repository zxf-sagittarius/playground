import Foundation

var str = "Hello, playground"

for i in 0..<10 {
    Thread.detachNewThread {
        print(i)
    }
}

class ObjectForThread {
    func threadTest() {
        let thread = Thread(target: self, selector: #selector(threadWorker), object: nil)
        thread.start()
        print("threadTest")
    }
    @objc func threadWorker() {
        print("threadWorker\(Thread.current)")
    }
    func operationTest() {
        let operation = BlockOperation {
            [weak self] in self?.operationWorker()
            return
        }
        let queue = OperationQueue()
        queue.addOperation(operation)
        print("operationTest")
    }
    func operationWorker() {
        print("operationWorker")
    }
}

let obj = ObjectForThread()
obj.threadTest()
obj.operationTest()


class ObjectForOperation {
    func operationTest() {
        let operation = MyOperation()
        operation.completionBlock = { () -> Void in
            print("completion")
        }
        let queue = OperationQueue()
        queue.addOperation(operation)
        print("test my operation")
    }
}

class MyOperation: Operation {
    override func main() {
        sleep(1)
        print("MyOperation")
    }
}

let obj2 = ObjectForOperation()
obj2.operationTest()




let queue = DispatchQueue(label: "myQueue", qos: DispatchQoS.default, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.inherit, target: nil)
queue.async {
    sleep(1)
    print("in queue async")
}

queue.asyncAfter(deadline: .now() + 1) {
    print("in asyncAter")
}

print("after invoke queue method")




let workingGroup = DispatchGroup()
let workingQueue = DispatchQueue(label: "request_queue")

workingGroup.enter()
workingQueue.async {
    Thread.sleep(forTimeInterval: 1)
    print("接口 A 数据请求完成")
    workingGroup.leave()
}

workingGroup.enter()
workingQueue.async {
    Thread.sleep(forTimeInterval: 1)
    print("接口 B 数据请求完成")
    workingGroup.leave()
}

//workingGroup.wait()
//print("接口A 和 接口B的数据请求都已经完成，开始合并")

print("开始")
workingGroup.notify(queue: workingQueue, work: DispatchWorkItem.init(block: {
    print("接口A 和 接口B的数据请求都已经完成，开始合并")
}))
print("不阻塞")


var seconds = 10
let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.global())
timer.schedule(deadline: .now(), repeating: 1.0)
timer.setEventHandler {
    seconds -= 1
    if seconds < 0 {
        timer.cancel()
    } else {
        print(seconds)
    }
}
timer.resume()
