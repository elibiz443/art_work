class ArtText < ApplicationRecord
  belongs_to :art

  validates :content, presence: true

  default_scope {order('art_texts.created_at ASC')}
end
