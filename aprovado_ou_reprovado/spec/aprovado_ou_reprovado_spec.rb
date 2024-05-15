require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  context 'Deve calcular a média de 2 números e retornar nota inválida' do
    it 'Quando n1 possuir valor negativo' do
      expect(media(-0.1,0)).to eq("nota inválida")
    end

    it 'Quando n2 possuir valor negativo' do
      expect(media(0,-0.1)).to eq("nota inválida")
    end

    it 'Quando n1 possuir valor maior que 10' do
      expect(media(10.1,10)).to eq("nota inválida")
    end

    it 'Quando n2 possuir valor maior que 10' do
      expect(media(10,10.1)).to eq("nota inválida")
    end
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do 
    expect(media(5.9,6)).to eq("reprovado")
  end

  it 'deve calcular média de 2 números positivos e retornar reprovado' do
    expect(media(2.5,4)).to eq("reprovado")
  end

  it 'deve calcular a média de 2 números positivos e retornar aprovado' do
    expect(media(6, 6)).to eq("aprovado")
  end

  it 'deve calcular a média de 2 números positivos e retornar aprovado' do
    expect(media(8, 10)).to eq("aprovado") 
  end
end
