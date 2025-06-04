# captcha

自用版本，纯粹的验证码生成

基于[concise_rucaptcha](https://github.com/liuzhenangel/concise_rucaptcha), [rucaptcha](https://github.com/liuzhenangel/concise_rucaptcha), [Libcaptcha](http://brokestream.com/captcha.html) 修改。


## Compile

```shell
ruby extconf.rb
make
```

## Example

```
require "./libcaptcha"

module LibCaptcha
  VERSION = 1.0
end

code, gif_bytes = LibCaptcha.create(1)
puts code
f = File.open("code.gif", "w")
f.write(gif_bytes)
f.close
```
