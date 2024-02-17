# README

This app is a solution for The Odin Project's Flickr API assignment, available at: https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api

**Project Instructions**

1) Go back to the Flickr API Docs and click Create an App at the top.  
2) Follow the steps for getting your API key. You’ll have to sign in or sign up for Flickr (someone has to these days) and give them some basic information about your app. Select “Apply for a non-commercial key” and let them know how awesome your photo feed app will be. You’ll automatically get a key generated for you, in addition to a secret key. Copy both of these somewhere you can get to them later.  
3) While logged in, copy your Flickr ID from the browser address bar by navigating to the “You” link on the top navbar. It will look like https://www.flickr.com/photos/yourIDhere/. An example would be 1895558555@N03. You’ll need that later for some of the API methods.  
4) Upload a few photos to your photostream!  
5) Create a new Rails app and add a gem for the Flickr API. There are gems for pretty much every API out there. They will all require you to include your API keys and secret keys somehow. Look for gems that are maintained (have recent commits) and well-adopted (GitHub stars is one way to get a good gauge for how valuable a gem is). Alternatively, you can browse through RubyGems to see popular gems.  
6) One note is that it’s not good practice to have your secret key hard coded into your app because then it’s hardly a secret, especially if you’re pushing to GitHub. A better practice is to store the key in an environment variable or use a gem like figaro (see docs). You can use Rails credentials(see this article) as well (although not mentioned in the article, the value of each key can also be accessed by chaining keys as methods as shown in the Rails Guides examples). Environment variables allow you to push your key to your app directly from the command line when it fires up. Figaro operates under the same principle, though it helps you out by allowing you to store the keys in an actual file that just doesn’t get committed with the rest of your code. Rails credentials encrypts the keys using the master key. Use one of these techniques unless you’re a cowboy.  
7) Build a basic StaticPagesController to display a home page with a basic form. The form should just be a single text field which takes the ID for a Flickr user. Once the form is submitted, the page should refresh and display the photos from that user.  
8) Ask for your friends’ flickr IDs or find random photofeeds on the web. View them in your app and react appropriately.  

---------------------------------  

**Version Info**

This app uses Ruby version 3.1.2p20 and Rails version 7.1.3
The Figaro gem version 1.2.0 has been used for environment variables for the API key and shared secret of the App, which are kept in my application.yml file, which has
not been committed with Git for security reasons.
Flickr gem version 2.1.0 is used to access the Flickr API through the static_pages controller #index method.

---------------------------------

**Author notes by Peter Hawes**

I've not been entirely sure what 'react appropriately' means in step 8 of the instructions, so I have added logic to the view to limit the number of photos displayed to 100 using a variable called 'limit' so that this value can be easily changed. For each url found, an img HTML element is created with the url as its src attribute.

Getting Figaro working seemed very difficult, but what made this worse was that the environment variables cannot be found from the console, even when the app is finding them successfully. 

Another surprising problem was that when the application.yml was not properly indented, this caused 'rails routes' to give me a Psych error --- fortunately Stack Exchange came to the rescue with this link, which I never would have guessed!