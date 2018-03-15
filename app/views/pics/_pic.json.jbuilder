json.extract! pic, :id, :user_id, :album_id, :title, :created_at, :updated_at
json.url pic_url(pic, format: :json)
