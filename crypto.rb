require 'pry'

module Crypto
    def Crypto.decrypt text, shift
        unenyc = String(text)
        alphabet = ('a'..'z').to_a
        enycrypted_text = unenyc.split ''
        decrypted_text = []

        enycrypted_text.each_index do |index|
            item = enycrypted_text[index]

            isCapital = false

            if item == item.upcase
                isCapital = true
            end

            item.downcase!

            to_insert = alphabet[alphabet.index(item) + shift.to_i()];

            if isCapital
                to_insert.upcase!
            end

            decrypted_text << to_insert
        end

        return decrypted_text.join
    end
end