class Order

def self.worst(current)
  current.each do |fbcase|
    estimate = fbcase[0]
    actual = fbcase[1]

    score = estimate - actual
    fbcase[2] = score
  end

  sorted_current = current.sort_by {|fbcase|fbcase[2]}
end


def self.best(current)
  self.worst(current).reverse!
end


end
