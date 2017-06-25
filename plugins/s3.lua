local function run(msg, matches)
  if matches[1] == "مشخصات" then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/HelpXt.txt", ok_cb, false)
      else
      return "شما مجاز به استفاده از این استیکر نیستید"
    end
  end
end

return {
  patterns = {
  "^(مشخصات) (.*)$"
  },
  run = run
}
