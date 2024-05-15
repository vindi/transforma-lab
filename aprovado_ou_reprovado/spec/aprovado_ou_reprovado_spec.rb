require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  context 'Deve calcular a média de 2 números e retornar nota inválida' do
    it 'Quando n1 possuir valor negativo' do
      expect(media(-0.1,0)).to eq('nota inválida')
    end

    it 'Quando n2 possuir valor negativo' do
      expect(media(0,-0.1)).to eq('nota inválida')
    end

    it 'Quando n1 possuir valor maior que 10' do
      expect(media(10.1,10)).to eq('nota inválida')
    end

    it 'Quando n2 possuir valor maior que 10' do
      expect(media(10,10.1)).to eq('nota inválida')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar reprovado' do
    it 'Quando a média for o máximo para retornar reprovado' do 
      expect(media(5.9,6)).to eq('reprovado')
    end

    it 'Quando n1 ou n2 for igual a 0' do 
      expect(media(0,0)).to eq('reprovado')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar aprovado'do
    it 'Quando a média for o minímo para retornar aprovado' do
      expect(media(6, 6)).to eq('aprovado')
    end

    it 'Quando n1 ou n2 for igual a 10' do 
      expect(media(10,10)).to eq('aprovado')
    end
  end

end
