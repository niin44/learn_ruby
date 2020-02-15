#write your code here
def echo(phrase)
    return phrase
end

def shout(phrase)
    return phrase.upcase
end

def repeat(phrase, value=2)
     return ((phrase + " ") * value).delete_suffix(" ")
end

def start_of_word(phrase, number)
    return phrase[0..number-1]
end

def first_word(phrase)
    i = 0
    phrase.each_char do |c|     
        if (c == ' ')
            return phrase[0..i-1]
        end
        i += 1
    end
end

def titleize(phrase)
    words = phrase.split
    returnString = ''
    words[0] = words[0].capitalize
    words.each do |word|
        if (word=="and"||word=="over"||word=="the")
            returnString += word + ' '
        else
            returnString += word.capitalize + ' '
        end
    end
    
    return returnString.delete_suffix(' ')
end