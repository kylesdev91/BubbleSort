

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var newArray = unsortedIntegers
var totalSwaps = 0
var passes = 0
var swap = 0
print("Pass: \(passes), Swaps: \(swap)/\(totalSwaps), Array: \(newArray)")   

while true {
    for i in 1..<newArray.count {
        if(newArray[i-1] > newArray[i]) {
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
func swap(integers: inout[Int], firstIndex:Int, secondIndex: Int)  {
    let holder = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = holder
}

