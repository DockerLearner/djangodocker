import os
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.environ["MYSQL_DATABASE"],
        'USER': os.environ["MYSQL_USERNAME"],
        'PASSWORD': os.environ["MYSQL_PASSWORD"],
        'HOST': "mysql",
        'PORT': 3306,
    }
}

