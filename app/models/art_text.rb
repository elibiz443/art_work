class ArtText < ApplicationRecord
  before_create :assign_text_opacity
  before_save :assign_text_opacity

  before_create :assign_background_opacity
  before_save :assign_background_opacity

  before_create :assign_shadow_opacity
  before_save :assign_shadow_opacity

  belongs_to :art

  validates :content, presence: true
  validates :padding_top, inclusion: {in: 0..36, message: 'Maximum Limit Reached!'}
  validates :padding_left, inclusion: {in: 0..44, message: 'Maximum Limit Reached!'}


  default_scope {order('art_texts.created_at ASC')}

  def assign_text_opacity
    self.color[-4, 3] = self.color_opacity
  end

  def assign_background_opacity
    self.background[-4, 3] = self.background_opacity
  end

  def assign_shadow_opacity
    self.text_shadow_color[-4, 3] = self.text_shadow_color_opacity
  end
end
