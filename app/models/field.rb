class Field < ApplicationRecord
  has_many :boulders, :dependent => :destroy

  def boulder_count
    boulders.count
  end
end