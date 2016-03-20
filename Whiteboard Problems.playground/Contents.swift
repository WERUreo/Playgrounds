import UIKit

//: ## GolfNow Whiteboard Questions
//: ----
//: Question 1:
//:
//: Write a function that will take in the given input and return the given output.
//:
//: Note the placement of the punctuation
//:
//: Input: "Have a nice day!"
//:
//: Output: "evaH a ecin yad!"
// Helper function to find characters in a string that are in a particular character set
func charset(cset: NSCharacterSet, containsCharacter c: Character) -> Bool
{
    let s = String(c)
    let result = s.rangeOfCharacterFromSet(cset)
    return result != nil
}

// Helper function to reverse the letters in a word
func reverseWord(input: String) -> String
{
    var newWord = ""
    for character in input.characters
    {
        newWord.insert(character, atIndex: newWord.startIndex)
    }
    return newWord
}

func reverseString(input: String) -> String
{
    let characterSet = NSCharacterSet.letterCharacterSet()
    let words = input.characters.split(" ").map(String.init)
    var newString = [String]()
    for word in words
    {
        var index: String.CharacterView.Index?
        for character in word.characters
        {
            // Let us find out where the non-letters are in the word (if any)
            if !charset(characterSet, containsCharacter: character)
            {
                index = word.characters.indexOf(character)
            }
        }

        var newWord = ""
        if let idx = index
        {
            let newSubString = word.substringToIndex(idx)
            newWord = reverseWord(newSubString)
            newWord.append(word.characters[idx])
        }
        else
        {
            newWord = reverseWord(word)
        }

        newString.append(newWord)
    }
    return newString.joinWithSeparator(" ")
}

let testString = "Have a nice day!"
let resultString = reverseString(testString)

//: Problem Notes
//:
//: This seems like a bit of overkill.  The most complicated part of this problem was handling the punctuation's position in the new string.  Currently, this code only handles the case where the punctuation happens to be at the end of a word.  If there was punctuation in the middle of a word, ie. a hypenated word like ```X-ray```, the resulting reversed word would just treat the punctuation as part of the word, resulting in ```yar-X```.
//:
//: If the punctuation's position didn't matter, and if I used the .reverse() method, this solution would have been much shorter.

//: Question 2:
//:
//: Write a function that takes in as input an array of Ints and outputs the number of pairs of Ints in the array that when added together return the sum of 0.
//:
//: Example:
//:
//: Input: [-1, 0, 5, 1, 2, 9, -2, 3]
//:
//: Output: 2
//:
//: Explanation: Both -1 + 1 and 2 + -2 equal 0

func numberOfPairs(input: [Int]) -> Int
{
    var numPairs = 0

    for i in 0..<input.count
    {
        for j in (i + 1)..<input.count
        {
            if input[i] + input[j] == 0
            {
                numPairs += 1
            }
        }
    }

    return numPairs
}

let inputArray = [-1, 0, 5, 1, 2, 9, -2, 1]
let result = numberOfPairs(inputArray)







let text = "abc"
let index2 = text.startIndex.advancedBy(2)
let lastChar: Character = text[index2]

