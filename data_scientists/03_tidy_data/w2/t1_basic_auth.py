#!/usr/bin/env python
import urllib2
import json
from StringIO import StringIO
import base64

auth_method = "Basic "
username = "TBD"
password = "TBD"
auth = auth_method + base64.urlsafe_b64encode("%s:%s" % (username, password))

req1 = urllib2.Request("https://api.github.com/users/jtleek/repos")
req = urllib2.Request("https://api.github.com/repos/jtleek/datasharing")
req.add_header("Authorization", auth)
req.add_header("Content-Type", "application/json")
req.add_header("Accept", "application/json")
res = urllib2.urlopen(req)

data = res.read()
repository = json.load(StringIO(data))
print repository['created_at']

# http://stackoverflow.com/questions/6371032/how-to-get-github-token-using-username-and-password
# curl -u <token>:x-oauth-basic https://api.github.com/user

# result - 2013-11-07T13:25:07Z


