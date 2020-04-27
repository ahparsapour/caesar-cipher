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

            unless alphabet.include? item
                decrypted_text << item
                next #dont do following
            end

            index = alphabet.index(item) + shift.to_i()

            if index >= alphabet.length
                index -= alphabet.length
            end

            to_insert = alphabet[index]

            if isCapital
                to_insert.upcase!
            end

            decrypted_text << to_insert
        end

        return decrypted_text.join
    end
end