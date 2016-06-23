# coding: utf-8
require 'digest'

puts 'Какую фразу хотите зашифровать?'
phrase = STDIN.gets.chomp

puts "Каким способом хотите зашифровать фразу \n1: MD5 \n2: SHA1"
number = STDIN.gets.chomp

md5 = Digest::MD5.new
sha1 = Digest::SHA1.new

# метод .digest после него строка которую надо зашифровать
case number
  when '1' then puts "Вот что получилось\n#{md5.hexdigest phrase}"
  when '2' then puts "Вот что получилось\n#{sha1.hexdigest phrase}"
end

