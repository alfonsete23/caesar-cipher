def caesar_cipher(string, shift)
    encrypted = ""
    string.split("").each do |char|
        # Encrypt uppercase
        if char.match(/[A-Z]/) then
            encrypted += (((char.ord + shift) % 65) % 26 + 65).chr
        # Encrypt lowercase
        elsif char.match(/[a-z]/) then
            encrypted += (((char.ord + shift) % 97) % 26 + 97).chr
        # Dont encrypt non alphabetic characters
        else
            encrypted += char
        end
    end
    return encrypted
end


