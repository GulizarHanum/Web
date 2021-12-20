require 'rspec'
require './lab2.rb'

describe "Check CS" do
  it 'should raise 2 to the power of word length if word ends with "CS"' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('askljdlkCS')
    expect(checkCS).to eql("Результат: 1024")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('tkknvmcCS')
    expect(checkCS).to eql("Результат: 512")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('izxokdCS')
    expect(checkCS).to eql("Результат: 256")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('ASDNCS')
    expect(checkCS).to eql("Результат: 64")
  end

  it 'should reverse word if word does not ends with "CS"' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('iasjdka')
    expect(checkCS).to eql("Результат: akdjsai")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('fdskekln')
    expect(checkCS).to eql("Результат: nlkeksdf")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('872kjbadas')
    expect(checkCS).to eql("Результат: sadabjk278")
    allow_any_instance_of(Kernel).to receive(:gets).and_return('posadj')
    expect(checkCS).to eql("Результат: jdasop")
  end
end

describe "Pokemons Array" do
  it 'should output array, which contain hash of pokemons' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Vi", "Orange", "Si", "Blue")
    expect(pokemons).to eql("Результат: [{:name=>\"Vi\", :color=>\"Orange\"}, {:name=>\"Si\", :color=>\"Blue\"}]")
    allow_any_instance_of(Kernel).to receive(:gets).and_return(4, "Di", "Orange", "Ji", "Blue", "Ri", "White", "Shi", "Yellow")
    expect(pokemons).to eql("Результат: [{:name=>\"Di\", :color=>\"Orange\"}, {:name=>\"Ji\", :color=>\"Blue\"}, {:name=>\"Ri\", :color=>\"White\"}, {:name=>\"Shi\", :color=>\"Yellow\"}]")
  end
end
