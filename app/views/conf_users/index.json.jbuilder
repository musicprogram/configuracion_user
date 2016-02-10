json.array!(@conf_users) do |conf_user|
  json.extract! conf_user, :id, :slogan, :name, :color_1, :color_2
  json.url conf_user_url(conf_user, format: :json)
end
