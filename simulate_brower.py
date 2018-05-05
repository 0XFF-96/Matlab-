from selenium import webdriver 
import pandas as pd
import numpy as np
import lxml

driver = webdriver.PhantomJS()

def load_data():
    'cleaning data'
    df = pd.read_excel('user.xlsx')
    df_name = df.iloc[:, 3:4]  # extract the name of moive from data
    numpy_data = np.array(df_name)  # convert it to list 
    list_data = numpy_data.tolist()

    clean_data = [ list_data[i][0] for i in range(0,len(list_data)) ]

    return clean_data



def get_url(name):

    basic_url = ' https://movie.douban.com/subject_search?search_text= '
    URL = basic_url + name 

    return URL  


def html_page(url):

    driver.get(url)
    content_page = driver.page_source 

    return content_page


def parse_html(content_page):

    s = etree.HTML(html)
    file_info = s.xpath('//*[@id="content"]/div/div[1]/div[3]/div[2]/div[4]/div[2]/div/div/span[3]/text()')

    return file_info


def main():

    data = {}
    name_list = load_data()
    
    for name in name_list:
        url = get_url(name)
        html_page = get_page(url)
        info = parse_html(html_page)

        data[name] = info 


if __name__=='__main__':

    main()


