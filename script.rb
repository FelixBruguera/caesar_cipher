def caesar_cipher(string, shift = 3)
  alphabet = ('A'..'Z').to_a
  format = []
  string.split('').each { |char| alphabet.include?(char) ? format.push('up') : format.push('down') }
  new_string = []
  chars = string.upcase.split('')
  chars.each do |char|
    if alphabet.include?(char)
      change = alphabet.index(char) + shift
      change -= alphabet.length if change >= alphabet.length
      new_string.push(alphabet[change])
    else
      new_string.push(char)
    end
  end
  new_string.each_with_index do |elem, i|
    new_string[i] = elem.downcase if format[i] == 'down'
  end
  new_string.join('')
end
