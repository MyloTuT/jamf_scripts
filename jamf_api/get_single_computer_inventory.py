#!/usr/bin/python3
import urllib2
import json
import xml
import xmllib
import request
import http.client


conn = http.client.HTTPSConnection("https://glossier.jamfcloud.com/")

headers = {
'authorization': " Basic YOUR_PASSWORD"
}


conn.request("GET", "/JSSResource/computers/id/8", headers=headers)

res = conn.getresponse()
data = res.read()


print(data.decode("utf-8"))