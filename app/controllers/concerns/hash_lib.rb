module HashLib
  extend ActiveSupport::Concern

  module ClassMethods
    # Creates an array of hashes where the key is the col. name,
    # and the value is the value for that record.
    # e.g. Email.where('id < ?', 300).pluck_to_hash([:email, :id])
    def pluck_to_hash(keys)
      self.pluck(*keys).map{|pa| Hash[keys.zip(pa)]}
    end
  end
end

module InjectHash
  extend ActiveSupport::Concern

  # To be used on an array instance composed of arrays of 2 items
  # e.g. Email.where('id < ?', 300).pluck(:email, :id).make_hash
  def make_hash
    hash = self.inject({}) do |result, el|
      result[el.first] = el.last
      result
    end
  end
end

class Array < Object 
  include InjectHash
end
