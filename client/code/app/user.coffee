exports.current= (cb) ->
  ss.rpc('user.current', cb)

exports.current (user) ->
  html = if user
      ss.user = user
      ss.tmpl['user-nametag'].render user
    else
      ss.tmpl['user-login'].render()
  $(html).appendTo("#login")
