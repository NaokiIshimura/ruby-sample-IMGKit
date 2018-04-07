# Ruby Sample IMGKit

[csquared/IMGKit: Uses wkhtmltoimage to create JPGs and PNGs from HTML](https://github.com/csquared/IMGKit)

# Install

```
$ bundle 

Fetching gem metadata from https://rubygems.org/..
Resolving dependencies...
Using bundler 1.16.1
Fetching imgkit 1.6.1
Installing imgkit 1.6.1
Fetching wkhtmltoimage-binary 0.12.4
Installing wkhtmltoimage-binary 0.12.4
Bundle complete! 2 Gemfile dependencies, 3 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
Post-install message from imgkit:
******************************************************************

Now install wkhtmltoimage binaries:
Global: sudo `which imgkit` --install-wkhtmltoimage
        rvmsudo imgkit --install-wkhtmltoimage
(installs to default /usr/local/bin/wkhtmltoimage)

inside RVM folder: export TO=`which imgkit | sed 's:/imgkit:/wkhtmltoimage:'` && imgkit --install-wkhtmltoimage
(you'll have to configure the location of the binary if you do this!)

(run imgkit --help to see more options)
******************************************************************
```

# Usage

```
$ ruby sample.rb

#=> file.png
```
