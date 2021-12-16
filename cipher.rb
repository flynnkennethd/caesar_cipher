#receives string and key for shift
#outputs encoded string

def caesar_cipher(string, key)
  product = ""
  string.each_char do |char|
    #sets minimum values for caps and lowercase
    min = char.ord < 91 ? 65 : 97 
    #if to ignore punctuation
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      changed_char = (char.ord - min + key) % 26 + min
      product += changed_char.chr
    else
      product += char
    end
  end
  #returns product
  product
end