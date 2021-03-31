import UIKit
/*
func matches(for regex: String, in text: String) -> [String] {

    do {
        let regex = try NSRegularExpression(pattern: regex)
        let nsString = text as NSString
        let results = regex.matches(in: text, range: NSRange(location: 0, length: nsString.length))
        return results.map { nsString.substring(with: $0.range)}
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return []
    }
}


let test = "camisa y mas quemari"
let matched = matches(for: "[^aeiouy]*[aeiouy]+(?:[^aeiouy]*$|[^aeiouy](?=[^aeiouy]))?", in: test)
print(matched)

*/

let reverseSyllabe = "yassius g"
                        .reversed()

var lastVowel: Character
lastVowel = "x"
for char in reverseSyllabe{
    if("aeiouy".contains(char)){
        lastVowel = char
        break
    }
}
print(lastVowel)
