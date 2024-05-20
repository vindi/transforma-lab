require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  context 'Deve calcular a média de 2 números e retornar nota inválida' do
    it 'quando n1 possuir valor negativo' do
      expect(media(-0.1,0)).to eq('nota inválida')
    end

    it 'quando n2 possuir valor negativo' do
      expect(media(0,-0.1)).to eq('nota inválida')
    end

    it 'quando n1 possuir valor maior que 10' do
      expect(media(10.1,0)).to eq('nota inválida')
    end

    it 'quando n2 possuir valor maior que 10' do
      expect(media(0,10.1)).to eq('nota inválida')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar reprovado' do
    it 'quando a média for menor que 6 e notas diferentes de 0' do
      expect(media(5.99,6)).to eq('reprovado')
    end
    it 'quando ambas as notas forem 0' do
      expect(media(0,0)).to eq('reprovado')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar aprovado'do
    it 'quando a média for maior ou igual a 6 e diferentes de 10' do
      expect(media(6, 6)).to eq('aprovado')
    end
    it 'quando ambas as notas forem 10' do
      expect(media(10, 10)).to eq('aprovado')
    end
  end

end
