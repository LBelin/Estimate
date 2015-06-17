require 'rails_helper'
require 'Order'
require 'API'

RSpec.describe Order do
  current = [[36,72],[100,110],[50,60],[20,15],[2,4],[10,8],[2,2],[10,3.4],[36,12]]

  it 'worst sorting' do
    ordered = Order.worst(current)
    expect(ordered).to eq(0)
  end

  it 'best sorting' do
    ordered = Order.best(current)
    expect(ordered).to eq(0)
  end

RSpec.describe API do
  it 'outputs the title of a case' do
    # fbcase = API.getAPIinfo(22778)
    # expect(fbcase).to eq('hello')
    fbcase = API.new(22678)
    expect(fbcase.title).to eq('hello')
  end
end
