# ART WORK

This is a web app in rails that implements the editable art functionality.

###### Checking logs
```
head -n 100 log/development.log 

tail -n 100 log/development.log 
```
###### Retreiving Google fonts From API

```
gem 'httparty' [bundle]
include HTTParty
url = 'https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyD7W5HdYNp2uo-C89kO8kWtu22UvUnon1w'
HTTParty.get(url).parsed_response["items"].collect{|data| [data["family"], "'#{data["family"]}', #{data["category"]}"]}
```
###### To be added later

* image border(size and color)
* border radius(size)
