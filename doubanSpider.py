import xlrd 
import requests
import lxml


def get_url(name):

    basic_url= 'https://www.douban.com/search?cat=1002&q='
    URL = basic_url + name


    return URL


def get_html_page(url):

    resp = requests.get(url)
    resp.encoding=resp.apparent_encoding 

    html_page = resp.text

    return html_page



def parse_html(html):

    s=etree.HTML(html)
    
    movie_time = s.xpath('//*[@id="content"]/div/div[1]/div[3]/div[2]/div[4]/div[2]/div/div/span[3]/text()')
    #movie_name = s.xpath(...)
    #movie_name = s.xpath(..)

    return movie_time


def main():
    '''
    fname = 'user.xlsx'
    bk = xlrd.open_workbook(fname)
    sh = b.sheet_by_name("sheet1")
    '''

    name_list = 
