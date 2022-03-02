# Django url shortener
A website for shortening url developed in Django framework. This website was built on [this](https://github.com/tomitokko/django_url_shortner) and added a function that users can share the shortened url on social media as a plus. The development was implemented in Docker container using Docker compose. The website was deployed on Heroku and you can find it [here](www.kykt.tk). (The domain is only free to use for 12 months. If the link is invalid, please see the images below for reference.)

## Website Display

The finished website
![finished website of url shortener](/assets/images/web_shortener.png "Website")

After the link is submitted for shortening, the shortened url is displayed and a bunch of share button is available.
![display the shortened url](/assets/images/web_shortener.png "shortening url")

You can share the shortened url on Telegram.
![share shortened url on telegram](/assets/images/web_shortener.png "share on telegram")

You can share the shortened url on reddit.
![share shortened url on reddit](https://github.com/hsuan81/django-url-shortener/blob/main/images/share_reddit.png "share on reddit")


## Getting Started

### Requirements

- Python==3.9.1
- Node.js==16.14.0
- Django==4.0.2

### Other dependencies

#### For Development

- python-decouple: For the purpose of seperating setting parameters and storing the values in '.env' file
- requests: An HTTP library for Python
- sharer.js: A tiny JS library for costumizable social share components on DOM elements. You can find the source code [here](https://github.com/ellisonleao/sharer.js). 

#### For Deployment

This website was deployed on Heroku, some dependencies are for the purpose of deployment. Please remove the import of them if you don't host the website on Heroku or you are in development process.

- gunicorn
- django-heroku
- dj-database-url
- psycopg2
- whitenoise

### Files

#### Development

- 'shortener'
- 'url_shortener'
- 'templates'
- 'db.sqlite3': This is Django's default database and used only in development for this project. The deployed database is postgreSQL.

#### Deployment on Heroku

- 'Procfile'
- 'runtime.txt'
- 'requirements.txt': The 'Dockerfile' uses this file as well.


## Resources

[Social share javascript package](https://ellisonleao.github.io/sharer.js/)
[Django url shortener project on Github](https://github.com/tomitokko/django_url_shortner)
[Django url shortener project tutorial on Youtube](https://www.youtube.com/watch?v=qPtScmB8CgA&list=PL1neKdrN14qPnbqipaDxcKK0qfrCb1Qpb&index=4&t=2569s&ab_channel=freeCodeCamp.org)

