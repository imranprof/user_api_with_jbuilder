
json.users do
  json.data @users do |user|
    json.id user.id
    json.name user.name
    json.address user.address
  end

  json.user_active_time @users do |user|
    json.id user.id
    json.date_time user.created_at
  end
  #json.array! @users, :id, :name, :address
end
