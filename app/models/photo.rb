class Photo < ApplicationRecord
  belongs_to :art
  mount_uploader :attachment, AttachmentUploader
end
