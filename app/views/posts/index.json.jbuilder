json.array!(@posts) do |post|
  json.extract! post, :id, :name, :content, :admin_id, :date_posted
  json.url post_url(post, format: :json)
end
