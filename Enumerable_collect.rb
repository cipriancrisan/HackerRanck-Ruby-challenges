secret_messages = ["qrygn", "zrrg ng pubpbyngr pbeare", "gra zra", "gjb onpxhc grnzf", "zvqavtug rkgenpgvba"]

def rot13(secret_messages)
  secret_messages.map do |message|
    modified_message = message.chars.map do |letter|
      if letter.match?(/[A-Za-z]/)
        ascii_offset = letter.downcase < 'n' ? 13 : -13
        (letter.ord + ascii_offset).chr
      else
        letter
      end
    end
    modified_message.join('')
  end
end

p rot13(secret_messages)
