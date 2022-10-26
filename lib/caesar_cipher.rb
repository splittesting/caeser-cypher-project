class CaesarCipher
  def translate(message, shift, result ='')
    message.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      #Modifies Lowercases and Uppercases
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) + shift) % 26) + base 
        results += rotation.chr 
      
        #Keeps space and punctuation 
      else 
        results += char
      end
    end 
    result 
  end 