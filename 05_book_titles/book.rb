class Book
# write your code here
    attr_reader :title

    def title=(phrase)
        words = phrase.split()
        newWords =[]
        returnPhrase = ''
        words.each_with_index do |word, index|
            if (index == 0)
                newWords.push(word.capitalize)
                next
            end
            little_words = %w{an a the in of the and}
            if(little_words.include? word)
                newWords.push(word)
            else
                newWords.push(word.capitalize)
            end
        end
        returnPhrase = newWords.join(' ')
        @title = returnPhrase
    end
end
