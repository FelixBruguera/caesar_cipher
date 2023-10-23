def caesar_cipher(string,shift = 3)
    alphabet =['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    format = []
    string.split('').each { |c| ('A'..'Z') === c ? format.push('up') : format.push('down')}
    new_string = []
    chars = string.upcase.split('')
    chars.each do |c|
      if !alphabet.include?(c)
        new_string.push(c)
      else
        index = alphabet.index(c)
        change = index + shift
        change -= alphabet.length if change >= alphabet.length
        new_string.push(alphabet[change])
      end
    end
    new_string.each_with_index do |elem,i|
      new_string[i] = elem.downcase if format[i] == 'down'
    end
    p new_string.join('')
end