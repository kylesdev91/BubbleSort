var newArray: [String] = []
while let nextLine = readLine() {
    newArray.append(nextLine)
}

var totalSwaps = 0
var passes = 0
var swap = 0
print("Pass: \(passes), Swaps: \(swap)/\(totalSwaps), Array: \(newArray)")   

while true {
    for i in 1..<newArray.count {
        if(newArray[i-1].lowercased() > newArray[i].lowercased()) {
            swap += 1
            totalSwaps += 1
            swap(integers:&newArray,firstIndex:i,secondIndex:i-1)
        }
    }
    passes += 1
    print("Pass: \(passes), Swaps: \(swap)/\(totalSwaps), Array: \(newArray)")

    if swap == 0 {
        break
    }
    swap = 0
}
func swap(integers: inout[String], firstIndex:Int, secondIndex: Int)  {
    let holder = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = holder
}

