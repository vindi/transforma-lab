require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  it 'deve calcular a média de 2 números positivos e retornar aprovado' do
    expect(media(7, 6)).to eq("aprovado")
  end

  it 'deve calcular a média de 2 números negativos e retornar nota inválida' do
    expect(media(-0.1,8)).to eq("nota inválida")
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do
    expect(media(2.5,4)).to eq("reprovado")
  end

  it 'deve calcular média de 2 números positivos maior que 10 e retornar nota inválida' do
    expect(media(10.1,10)).to eq("nota inválida")
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do 
    expect(media(5.9,6)).to eq("reprovado")
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do 
    expect(media(0,0)).to eq("reprovado")
  end

  it 'deve calcular média de 2 números positivos e retornar aprovado' do 
    expect(media(10,10)).to eq("aprovado")
  end
end
