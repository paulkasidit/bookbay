#### Bookbay
## By

* Kasidit Srisawat (Paul)
* Anthony Gladden (Ant)

## Technologies Used

* Ruby 
* Rails 
* Active Record
* JavaScript 
* CSS 

## Description

Ruby on Rails TeamWeek Project. Platform for users to buy and sell books. 

## Setup/Installation Requirements

1. Clone the repo to your desired local directory with the below terminal command (you must already have git installed). Open a terminal in your preferred directory and run this command. 
```
$git clone https://github.com/paulkasidit/bookbay

``` 
2. Open this folder in your VS Code. 
3. Run this command to install required gems
``` 
$bundle install
``` 
4. Run this command to seed database - User logins are located at the top of the terminal output
``` 
$rake db:seed
```
5. Run this command to start the server, it will usually be hosted on http://localhost:3000/
``` 
$rails s 
```

## Known Bugs

* One quantity per item, once a user has bought an item it cannot be bought again. 

## License

Any inquiries or issues can be reported to _(kasiditpaul@gmail.com)

MIT License

Copyright (c) 2022 Kasidit Srisawat

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.