ChefEmail
========

Demo of Using AngularJS for Rails Frontend
------------------------------------------

- Ruby version: 2.2.2p95
- Rails: 4.2.5.2

Synopsis
--------

- This app is a demonstration of a SPA.
- It also implements an infinite scroll via AngularJS

Gem dependencies
---------------
- gon
- bower-rails
- angular-rails-templates
  This ensures that Angular assets are served properly in the Rails Assets pipeline
- responders (for responds to, etc)

Hash Helpers
--------------

controllers/concerns has a couple of handy methods for building simple hashes:

![hash\_lib.rb](app/assets/images/hashlib.png)


Example using make\_hash:

![make\_hash method](app/assets/images/make_hash.png)


Example using pluck\_to\_hash:

![pluck\_to\_hash](app/assets/images/pluck_to_hash.png)


### Rails API

App also has example of using Rails API to upload a large query in the background
with Angular.js

Copyright
--------


[Copyright]( http://jet.mit-license.org/  ) by Jerrold R Thompson
