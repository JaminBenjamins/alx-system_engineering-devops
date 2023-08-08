#!/usr/bin/python3
"""function that queries the reddit api
and prints the first ten hot post for a subreddit"""

import requests


def top_ten(subreddit):
    """function that queries the reddit API and 
    prints the title of the 10 hot posts listed
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0'}
    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            subreddit = response.json().get('data').get('children')
            for i in range(10):
                print(subreddit[i].get('data').get('title'))
        else:
            print("None")
    except Exception:
        print("None")
