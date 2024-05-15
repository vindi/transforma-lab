require 'spec_base'
require 'pedra_papel_tesoura'

describe 'Pedra, Papel e Tesoura' do
  context 'deve retornar o cenário de derrota do jogador' do
    it 'quando usa pedra contra papel' do
      expect(jogar('pedra', 'papel')).to eq('Você perdeu - pedra perde contra papel')
    end

    it 'quando usa papel contra tesoura' do
      expect(jogar('papel', 'tesoura')).to eq('Você perdeu - papel perde contra tesoura')
    end

    it 'quando usa tesoura contra pedra' do
      expect(jogar('tesoura', 'pedra')).to eq('Você perdeu - tesoura perde contra pedra')
    end
  end

  context 'deve retornar o cenário de empate' do
    it 'quando ambos utilizam pedra' do
      expect(jogar('pedra', 'pedra')).to eq('O jogo empatou, ambos usaram pedra')
    end

    it 'quando ambos utilizam papel' do
      expect(jogar('papel', 'papel')).to eq('O jogo empatou, ambos usaram papel')
    end

    it 'quando ambos utilizam tesoura' do
      expect(jogar('tesoura', 'tesoura')).to eq('O jogo empatou, ambos usaram tesoura')
    end
  end

  context 'deve retornar o cenário de vitória do jogador' do
    it 'quando usa papel contra pedra' do
      expect(jogar('papel', 'pedra')).to eq('Você ganhou - papel vence contra pedra')
    end

    it 'quando usa tesoura contra papel' do
      expect(jogar('tesoura', 'papel')).to eq('Você ganhou - tesoura vence contra papel')
    end

    it 'quando usa pedra contra tesoura' do
      expect(jogar('pedra', 'tesoura')).to eq('Você ganhou - pedra vence contra tesoura')
    end
  end
end
