require './crypto.rb'

puts 'Please Enter a Text'
text = gets.chomp

puts 'Please Enter shift index'
shift = gets.chomp

decrypted = Crypto.decrypt text, shift

puts decrypted
