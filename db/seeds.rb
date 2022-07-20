Art.create(
  name: "banner1",                                              
)

Icon.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/icons/star.png')),
  art_id: 1
)

Icon.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/icons/circle.png')),
  art_id: 1
)

Icon.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/icons/square.png')),
  art_id: 1
)

Photo.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/photos/blue_ribbon.png')),
  art_id: 1
)

Photo.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/photos/blue_bird.png')),
  art_id: 1
)

Photo.create(
  attachment: File.open(File.join(Rails.root, '/app/assets/images/photos/gold_star.png')),
  art_id: 1
)
