from PIL import Image # for nudebox? (to detect there is no NSFW content)
import requests
from io import BytesIO
import json # accepts JSON-encoded POST/PATCH data
import re

response = requests.get('http://localhost:8080/')
 
fields = {'title':'','content':'','url':'http://www.bbc.co.uk/news/uk-39657382'}

article_content = requests.get(fields['url'])

# getting article content ... from html
title_re = r"<title>.+</title>"
article_html = article_content.text
article_html_split = article_html.splitlines()

for line in article_html_split:
    title = re.search(title_re, line)
    if title is not None:   # strip title idssss
        stripped_title = title.string
        stripped_title = stripped_title.strip()
        stripped_title = stripped_title[7::-8]
        #stripped_title = stripped_title[:-8]
        break   # found title, don't overwrite it

# setting title and content 
if title is not None: 
    fields['title']=stripped_title

# making a sample HTTP POST request
#response = requests.post('http://localhost:8080/fakebox/check', data=fields)
#print(response.text)

# content/title.decision will be bias, impartial or unsure if not confident
# either way
# content/title.score is 0 (most biased) to 1 (most impartial)


