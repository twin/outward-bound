ActiveAdmin.register Album do
  config.paginate = false

  index do
    selectable_column
    column :name_en
    column :name_hr
    column :photos do |album|
      album.photos.count
    end
    default_actions
  end

  filter :name_en
  filter :name_hr

  form partial: "form"

  show title: ->(album) { album.to_s } do |album|
    attributes_table do
      row :name_en
      row :name_hr
      row :photos do
        album.photos.inject(raw("")) do |result, photo|
          result << image_tag(photo.file_url(:small), height: 100)
        end
      end
    end
  end

  controller do
    respond_to :js, only: :update
  end
end