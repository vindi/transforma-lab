require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  it 'deve calcular a média de 2 números positivos e retornar aprovado' do
    expect(media(7, 6)).to eq("aprovado")
  end

  it 'deve calcular a média de 2 números negativos e retornar erro' do
    expect(media(-3,-5)).to eq("nota inválida")
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do
    expect(media(2.5,4)).to eq("reprovado")
  end

  it 'deve calcular média de 2 números positivos maior que 10 e retornar nota inválida' do
    expect(media(5,12)).to eq("nota inválida")
  end
end
