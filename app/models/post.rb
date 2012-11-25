class Post < ActiveRecord::Base
  translates :title, :body

  default_scope -> { order("#{table_name}.created_at DESC") }

  validates_presence_of :title_hr, :title_en, :body_hr, :body_en

  def cover_photo_url
    "/images/cover_photo.jpg"
  end

  def gallery
    1
  end
end
