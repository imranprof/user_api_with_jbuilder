
if @user.present?
  json.key_format! camelize: :upper
  json.user_info do
    json.user_id @user.id
    json.name @user.name
    json.full_address @user.address
    json.since @user.created_at
  end

else
  json.SoftRemainder do
    json.message "No data found for user: '#@iuser' "
  end

end

