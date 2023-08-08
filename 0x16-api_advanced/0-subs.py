#!/usr/bin/python3
""" A function that queries the Reddit API 
and return number of subscribers for given subreddit
"""

import requests


def number_of_subscribers(subreddit):
    """Function querying the reddit API returning number of subscribers"""
    url = 'http://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'My User Agent 1.0'}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        return data.get('data').get('subscribers')
    else:
        return 0
