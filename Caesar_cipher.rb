puts "Please enter a string to encrypt:"
str = gets.chomp
puts "Enter an integer for shift:"
shift = gets.chomp.to_i.abs()

def  caesar_cipher(str = "Scooby-Doo, Vaal-234", shift = 8)
    codes = str.codepoints
    new_code = 0
    result = []

    codes.each do |code|
        if code >= 65 && code <= 90
            new_code = (((code - 65) + shift) % 26) + 65
            result.push(new_code)

        elsif code >= 97 && code <= 122
            new_code = (((code - 97) + shift) % 26) + 97
            result.push(new_code)
        else
            result.push(code)
        end
    end

    return result.pack('U*')
end

p caesar_cipher(str, shift)