json.data do
  json.user do
    json.call(
    @user,
    :id,
    :name
    )
  end
end