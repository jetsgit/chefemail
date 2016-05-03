module HashLib
  extend ActiveSupport::Concern

    # To be used on an array instance composed of arrays of 2 items
    def make_hash
      self.inject({}) do |result, el|
        result[el.first] = el.last
        result
      end
    end

  module ClassMethods
    # Creates an array of hashes where the key is the col. name,
    # and the value is the value for that record.
    # Takes an array of symbols for its argument.
    def pluck_to_hash(keys)
      self.pluck(*keys).map{|pa| Hash[keys.zip(pa)]}
    end
  end
end

class Array < Object 
  include HashLib
end

