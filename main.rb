# Подключаем классы товара и классов-детей: книги и фильма
require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Создадим новый товар — фильм за 290 рублей, и скажем, на складе их осталось 4 штук.
leon = Movie.new(price: 290, amount: 4)

# выведем это в консоль
puts "Фильм Леон стоит #{leon.price}. На складе их осталось #{leon.amount} шт."