require 'imgkit'

kit = IMGKit.new('http://google.com')
file = kit.to_file('./url.png')
