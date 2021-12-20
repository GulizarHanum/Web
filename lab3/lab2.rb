def checkCS
  puts "Введите слово: "
  word = gets.chomp
  if word.end_with?("CS") == true
    puts "Результат: #{2**word.length}"
    "Результат: #{2**word.length}"
  else
    puts "Результат: #{word.reverse}"
    "Результат: #{word.reverse}"
  end
end

def pokemons
  pokemons = []
  puts "Сколько покемонов добавить? "
  count = gets.to_i
  count.times do
    pokemon = {}
  puts "Введите имя: "
  pokemon[:name] = gets
  puts "Введите цвет: "
  pokemon[:color] = gets
  pokemons << pokemon
  end
  puts "Результат: #{pokemons}"
  "Результат: #{pokemons}"
end

def menu
  loop do
    puts "Выбор задания :
    1. Первое задание
    2. Второе задание
    0. Выход"
    input = gets.to_i
    if input == 1
      checkCS
    elsif input == 2
      pokemons
    elsif input == 0
      break
    else
      puts "Команда не найдена."
    end
  end
end