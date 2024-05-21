require 'spec_base'
require 'aprovado_ou_reprovado'

describe 'Aprovado ou reprovado' do
  context 'Deve calcular a média de 2 números e retornar nota inválida' do
    it 'quando a média possuir valor negativo' do
      expect(imprime_resultado(-0.1)).to eq('nota inválida')
    end

    it 'quando a média possuir valor maior que 10' do
      expect(imprime_resultado(10.1)).to eq('nota inválida')
    end

    it 'quando a média possuir um valor diferente de número' do
      expect(imprime_resultado("10")).to eq('nota inválida')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar reprovado' do
    it 'quando a média for menor que 6' do
      expect(imprime_resultado(5.9999)).to eq('reprovado')
    end

    it 'quando a média for 0 (mínimo para reprovado)' do
      expect(imprime_resultado(0)).to eq('reprovado')
    end
  end

  context 'Deve calcular a média de 2 números positivos e retornar aprovado' do
    it 'quando a média for maior ou igual a 6' do
      expect(imprime_resultado(6)).to eq('aprovado')
    end

    it 'quando a média for 10 (máximo para aprovado)' do
      expect(imprime_resultado(10)).to eq('aprovado')
    end
  end
end
