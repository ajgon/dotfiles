import sys
import os

sys.path.append(os.path.join(os.path.expanduser("~"), ".local"))

from readability import ParserClient

parser_client = ParserClient()
parser_response = parser_client.get_article(sys.argv[1])
article = parser_response.json()

print(article['title'].encode('utf-8').strip())

print(article['content'].encode('utf-8').strip())
