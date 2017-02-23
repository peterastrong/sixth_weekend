# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Entry

  attr_accessor :word, :synonyms, :antonyms

  def initialize(entry)
    @word = entry[:word]
    @synonyms = entry[:synonyms]
    @antonyms = entry[:antonyms]   
  end

  

end 

word1 = Entry.new(word: "one", synonyms: ["a", "b"], antonyms: ["c", "d"])
word2 = Entry.new(word: "two", synonyms: ["e", "f"], antonyms: ["g", "h"])


class Thesaurus < Entry 

  attr_accessor :words 

  def initialize(input)
    @words = input[:words]
  end 

  def add_word(entry)
    @words << entry
  end

  def delete_word(_word)
    @words 
  end

  def syns(_word)
    p _word.synonyms
  end 

  def ants(_word)
    p _word.antonyms
  end

  def add_syn(_word, _synonym)
    _word.synonyms << _synonym
    p _word.synonyms
  end

  def add_ant(_word, _antonym)
    _word.antonyms << _antonym
    p _word.antonyms
  end

end 



p thesaurus1 = Thesaurus.new(words: [])
thesaurus1.add_word(word1)
thesaurus1.add_word(word2)
puts

p thesaurus1
puts 
p  "synonyms of word1"
thesaurus1.syns(word1)
puts
p "antonyms of word 2"
thesaurus1.ants(word2)
puts
p "add a synonym"
thesaurus1.add_syn(word1, "z")
puts
p "add an antonym"
thesaurus1.add_ant(word2, "y")

