require 'spec_base'
require 'imprime_pares'

describe 'Pares' do
  it 'Retorne valor inválido quando o valor de entrada não for um inteiro' do
    expect(imprime_pares("5")).to eq('valor inválido')
  end

  it 'Imprime somente 0' do
    expect {
      imprime_pares(0)
    }.to output("0\n").to_stdout
  end

  it 'Não imprime nada' do
    expect {
      imprime_pares(-4)
    }.to output("").to_stdout
  end

  it 'Imprime números pares até 15' do
    expect {
      imprime_pares(15)
    }.to output("0\n2\n4\n6\n8\n10\n12\n14\n").to_stdout
  end
end
