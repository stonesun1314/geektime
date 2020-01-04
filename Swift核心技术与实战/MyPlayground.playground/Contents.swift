import UIKit

var words = """
    There are momoents in life when you hug them for have only one life and one
"""

let NOW_WORDS = ["a","of","and","or","the","on"]
func wordFrep(words: String)->[String: Int] {
    var wordDict:[ String: Int] = [ : ]
    let wordList = words.split(separator: " ")
    for word in wordList {
        let lowercaseWord = word.lowercased()
        if !NOW_WORDS.contains(lowercaseWord) {
            if let count = wordDict[lowercaseWord] {
                wordDict[lowercaseWord] = count + 1
            }else {
                wordDict[lowercaseWord] = 1
            }
        }
        
    }
    return wordDict;
}

//print(wordFrep(words: words))

//func wordFreq2(word: String) -> [String: Int] {
//    var wordDict: [String: Int] = [ : ]
//    let wordList = words.split(separator: " ")
//    wordList.map{ $0.lowercased() }
//        .filter{ !NOW_WORDS.contains({$0})}
//        .forEach { wordDict[$0] = wordDict[$0] ?? 0 + 1}
//}
//
//print(wordFrep(words: words))

let employee = ["neal", "s", "stu", "j","rich", "bob", "aiden", "j", "rich", "bob"]

func cleanNames(names: [String]) -> String {
    var joinedNames = ""
    for name in names {
        if name.count > 1 {
            joinedNames += name.capitalized + ","
        }
    }
    joinedNames.remove(at: joinedNames.index(before: joinedNames.endIndex))
    return joinedNames
}

print(cleanNames(names: employee))

let result = employee.filter{ $0.count > 1 }
    .map { $0.capitalized }
    .joined(separator: ",")

print(result)

extension Array where Element: Any {
    public func concurrentMap<T>(_ transform: (Element) -> T) -> [T]{
        let n = self.count
        if n == 0 {
            return []
        }
        var result = Array<T>()
        result.reserveCapacity(n)
        DispatchQueue.concurrentPerform(iterations: n, execute: (i) in result.append(transform(self[i])))
        
    }
}

let result = employee.filter{ $0.count > 1 }
    .concurrentMap { $0.capitalized }
    .joined(separator: ",")

print(result)
