manifesto
=========================

Brunch plugin that automatically ads or updates your app.appcache file with the specific data you add in the plugin. It also automatically ads a specific "date" comment so the file always stays up to date. For more information about application cache you can check https://developer.mozilla.org/en/docs/HTML/Using_the_application_cache

Just add the folowing into your config.coffee file

```coffeescript
manifesto:
  active: true #if false it doesn't do anything ;)
  CACHE: [] # Example: ["style.css", "images/1.png"]
  NETWORK: [] # Example: ["network.html", "something.html"]
  FALLBACK: [
    { "image.jpg":"newImage.jpg" },
    { "/" : "fallback.html" }
  ]
```