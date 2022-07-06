class Art < ApplicationRecord
  has_many :photos
  has_many :icons
  has_many :texts

  default_scope {order('art_works.created_at DESC')}
end
