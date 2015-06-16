class Order

def self.worst(current)
  current.each do |cases|
    estimate =fogbugz_cases[0]
    actual =fogbugz_cases[1]

    score = estimate - actual
   fogbugz_cases[2] = score
  end

  sorted_current = current.sort_by {|cases|fogbugz_cases[2]}
end


def self.best(current)
  self.worst(current).reverse!
end


end
