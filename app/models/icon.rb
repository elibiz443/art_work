class Icon < ApplicationRecord
  belongs_to :art
  mount_uploader :attachment, AttachmentUploader
end
