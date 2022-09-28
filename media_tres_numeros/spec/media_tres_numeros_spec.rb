require 'spec_base'
require 'media_tres_numeros'

describe 'Media tres números' do
  it 'deve calcular a média de 3 números positivos' do
    expect(media(3, 4, 5)).to eq(4)
  end

  it 'deve calcular a média de 3 números negativos' do
    expect(media(-3, -2, -5)).to eq(-4)
  end

  it 'deve calcular média de números racionais' do
    expect(media(2.5, 4.5, 4.5)).to eq(3.8333333333333335)
  end
end
