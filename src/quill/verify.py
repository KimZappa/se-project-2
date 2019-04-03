from PIL import Image # for nudebox? (to detect there is no NSFW content)
import requests
from io import BytesIO

response = requests.get('http://localhost:8080/')
print(response.status_code)
#print(response.text)
print(response.json)

# making a sample HTTP POST request
#response = requests.post('http://localhost:8080/fakebox/check', 
