require 'rails_helper'
require 'Order'
require 'Regex'

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
end

RSpec.describe Regex do
  it 'knows this case is resolved' do
    resolved_case = FogBugzCase.create!(resolved?:'Resolved (Implemented)')
    expect(Regex.resolved?(resolved_case)).to be true
  end

  it 'knows this case is active' do
    active_case = FogBugzCase.create!(resolved?:'Active')
    expect(Regex.resolved?(resolved_case)).to be false
  end
end
