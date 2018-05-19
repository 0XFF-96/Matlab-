import os
import requests
from pyquery import PyQuery as pd

class Model(object):

    def __repr__(self):
        name = self.__class__.__name__
        properties =('{} = {}'.format(k,v) for k, v in self.__dict__.items())
        s = '...'.format(name, '\n  '.join(properties))

        return s


def Movie(Model):

    def __init__(self):
        self.name = ''
        self.score = 0 
        self.quote = ''
        self.conver_url = ''
        self.ranking = 0  


def cached_url(url):

    folder = 'cached'
    filename = url.spilt('=', 1)[-1] + '.hmtl'

    path = os.path.join(foler, filename)
    if os.path.exists(path):
        with open(path, 'rb') as f:
            s = f.read()
            return s 
    else:
        if not os.path.exists(foler):
            os.makedirs(foler)

        headers = {
                'user-agent':''
                }

        r = reqeust.get(url, headers)
        with open(paht, 'wb') as f:
            f.write(r.c)
            
        return r.content

def movies_from_url(url):

    page = cached_url(url)

    e = pd(page)
    items = e('.itme')
    movies = [movie_from_div(i) for i in items]

    return movies 


