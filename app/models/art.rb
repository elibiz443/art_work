class Art < ApplicationRecord
  before_create :assign_height
  before_save :assign_height

  before_create :assign_opacity
  before_save :assign_opacity

  has_many :photos
  has_many :icons
  has_many :texts

  default_scope {order('arts.created_at DESC')}

  def assign_height
    if self.width == 900 || self.width == 700 || self.width == 500
      self.height = self.width
    else
      self.height = self.width.to_i / 1.5
    end
  end

  def assign_opacity
    self.background_color[-4, 3] = self.background_color_opacity
  end
end
