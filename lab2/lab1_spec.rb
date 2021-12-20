require 'rspec'
require './laba1.rb'

describe "Greeting" do
  it 'should do ok for age equal or bigger than 18' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Гулизар', 'Измайлова', 21)
    expect(greeting).to eql("Привет, Гулизар Измайлова. \nСамое время заняться делом!")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Иван', 'Щи', 20)
    expect(greeting).to eql("Привет, Иван Щи. \nСамое время заняться делом!")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Артем', 'Ширма', 43)
    expect(greeting).to eql("Привет, Артем Ширма. \nСамое время заняться делом!")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Эдрю', 'Шевчук', 18)
    expect(greeting).to eql("Привет, Эдрю Шевчук. \nСамое время заняться делом!")
  end
 
  it 'should do ok for age smaller than 18 ' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Максим', 'Солнцев', 14)
    expect(greeting).to eql("Привет, Максим Солнцев.\nТебе меньше 18 лет, но начать учиться программировать никогда не рано")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Антон', 'Антонов', 15)
    expect(greeting).to eql("Привет, Антон Антонов.\nТебе меньше 18 лет, но начать учиться программировать никогда не рано")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Александр', 'Горшок', 16)
    expect(greeting).to eql("Привет, Александр Горшок.\nТебе меньше 18 лет, но начать учиться программировать никогда не рано")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Светлана', 'Панькова', 17)
    expect(greeting).to eql("Привет, Светлана Панькова.\nТебе меньше 18 лет, но начать учиться программировать никогда не рано")
  end
end

describe "Foobar" do
  it 'should return second number if one of the numbers are equal to 20' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 14)
    expect(fooBar).to eql("Второе введёное число равно: 14")
  end
  it 'should return sum of the numbers if no one of the numbers are not equal to 20' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(90, 10)
    expect(fooBar).to eql("Сумма всех элементов равна: 100")
  end
end
