class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`

    # changes each string into an integer, removes any duplicates
    changes = a.uniq.map{|elem| elem.to_i}
    # adds two to each number 
    adds = changes.map{|elem| elem += 2}
    # keeps the even numbers only, rejects the resulting numbers greater than ten
    keeps = adds.select{|elem| elem.even? and elem<10}
    # finally returns the sum of the resulting array
    keeps.inject(0){|sum,x| sum + x}
  end
end


