# IMGKit.new takes the HTML and any options for wkhtmltoimage
# run `wkhtmltoimage --extended-help` for a full list of options
kit = IMGKit.new(html, :quality => 50)
kit.stylesheets << '/path/to/css/file'
kit.javascripts << '/path/to/js/file'

# Get the image BLOB
img = kit.to_img

# New in 1.3!
img = kit.to_img(:jpg)      #default
img = kit.to_img(:jpeg)
img = kit.to_img(:png)

# Save the image to a file
file = kit.to_file('/path/to/save/file.jpg')
file = kit.to_file('/path/to/save/file.png')

# IMGKit.new can optionally accept a URL or a File.
# Stylesheets nor Javascripts can not be added when source is provided as a URL of File.
kit = IMGKit.new('http://google.com')
kit = IMGKit.new(File.new('/path/to/html'))

# Add any kind of option through meta tags
IMGKit.new('<html><head><meta name="imgkit-quality" content="75"...

# Format shortcuts - New in 1.3!
IMGKit.new("hello").to_jpg
IMGKit.new("hello").to_jpeg
IMGKit.new("hello").to_png

Note: Ruby's buffered I/O means that if you want to write the string data to a file or tempfile make sure to call `#flush` to ensure the contents don't get stuck in the buffer.
