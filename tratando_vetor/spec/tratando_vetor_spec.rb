require 'spec_base'
require 'tratando_vetor'

describe 'remover_pares' do
  it 'Retorna valores ímpares em uma lista mista' do
    expect(remove_pares([1,2,3,4,5,6,7,8,9])).to eq([1,3,5,7,9])
  end
  it 'Retorna uma lista vazia quando o vetor contém somente números pares' do
    expect(remove_pares([2,4,6,8,10])).to eq([])
  end
  it 'Retorna a mesma lista quando recebe um vetor contendo somente números ímpares' do
    expect(remove_pares([1,3,5,7,9])).to eq([1,3,5,7,9])
  end
  it 'Retorna valores ímpares em uma lista mista com números negativos e positivos' do
    expect(remove_pares([-1,2,3,-4,-5,6,-7,-8,9])).to eq([-1,3,-5,-7,9])
  end
end