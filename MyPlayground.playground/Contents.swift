//5.Baisc Collections : -------------------------------
let studentScore: [String: Double] = [
    "Nick": 81.5,
    "Jack": 91.5,
    "Mike": 95.1,
    "luke": 80.9
]
let sortedOrder = studentScore.sorted { $0.value > $1.value }
print("---Students Grade Tracker---")
for (index,Student) in sortedOrder.enumerated(){
    print("Rank \(index+1): \(Student.key) - \(Student.value)%")
}
