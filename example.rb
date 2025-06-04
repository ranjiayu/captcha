require "./libcaptcha"

module LibCaptcha
  VERSION = 1.0
end

code, gif_bytes = LibCaptcha.create(1)
puts code
f = File.open("code.gif", "w")
f.write(gif_bytes)
f.close
