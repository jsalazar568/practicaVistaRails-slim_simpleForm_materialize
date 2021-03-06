class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses, allow_destroy: true

  def full_name
    self.name + " " + self.last_name
  end
end
