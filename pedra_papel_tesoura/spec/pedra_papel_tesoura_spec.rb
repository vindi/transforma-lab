require 'spec_base'
require 'pedra_papel_tesoura'

describe 'Pedra, Papel e Tesoura' do
  it 'deve retornar o cenário de derrota do jogador quando usa pedra contra papel' do
    expect(jogar('pedra', 'papel')).to eq('Você perdeu - pedra perde contra papel')
  end

  it 'deve retornar o cenário de derrota do jogador quando usa papel contra tesoura' do
    expect(jogar('papel', 'tesoura')).to eq('Você perdeu - papel perde contra tesoura')
  end

  it 'deve retornar o cenário de derrota do jogador quando usa tesoura contra pedra' do
    expect(jogar('tesoura', 'pedra')).to eq('Você perdeu - tesoura perde contra pedra')
  end

  it 'deve retornar quando ambos utilizam pedra' do
    expect(jogar('pedra', 'pedra')).to eq('O jogo empatou, ambos usaram pedra')
  end

  it 'deve retornar quando ambos utilizam papel' do
    expect(jogar('papel', 'papel')).to eq('O jogo empatou, ambos usaram papel')
  end

  it 'deve retornar quando ambos utilizam tesoura' do
    expect(jogar('tesoura', 'tesoura')).to eq('O jogo empatou, ambos usaram tesoura')
  end

  it 'deve ter um cenário de vitória do jogador quando usa papel contra pedra' do
    expect(jogar('papel', 'pedra')).to eq('Você ganhou - papel vence contra pedra”')
  end

  it 'deve ter um cenário de vitória do jogador quando usa tesoura contra papel' do
    expect(jogar('tesoura', 'papel')).to eq('Você ganhou - tesoura vence contra papel')
  end

  it 'deve ter um cenário de vitória do jogador quando usa pedra contra tesoura' do
    expect(jogar('pedra', 'tesoura')).to eq('Você ganhou - pedra vence contra tesoura”')
  end
end
