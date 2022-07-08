Art.create(
  name: "Sample_One"
)

Text.create(
  text_decoration: "italic, bold",
  text_content: "Sample Text",
  text_shadow: true,
  art_id: 1
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
