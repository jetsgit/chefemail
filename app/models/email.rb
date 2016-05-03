class Email < ActiveRecord::Base
  def self.pluck_to_hash(keys)
    pluck(*keys).map{|pa| Hash[keys.zip(pa)]}
  end

  # create json hash out of array of :email/:id arrays
end

class Array < Object
  def make_hash
    self.inject({}) do |result, el|
      result[el.first] = el.last
      result
    end
  end
end
