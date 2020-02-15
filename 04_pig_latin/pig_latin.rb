#write your code here
def count_vowels(str)
    str.scan(/[aeoui]/).count
end

def translate(phrase)
    words = phrase.split()
    newWords = []
    words.each do |word|
        
        if (count_vowels(word[0])>0)
            newWords.push(word + 'ay')
        end
        if (count_vowels(word[0])==0)
            modWord = word
            word.each_char do |c|
                if (modWord[0]=="q" and modWord[1]=="u")
                    modWord = modWord[2..modWord.length] + modWord[0..1]
                    break
                end
                if (count_vowels(c)==0)
                    modWord = modWord[1..modWord.length]+modWord[0]
                else
                    break
                end
            end
            newWords.push(modWord + 'ay')
        end
    end
    return newWords.join(" ")
end