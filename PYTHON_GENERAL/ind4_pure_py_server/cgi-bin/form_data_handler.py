#!/usr/bin/env python3
# -*- coding: cp1251 -*-

import sys
import codecs

import cgi

from db import add_galaxy, add_system, add_planet

sys.stdout = codecs.getwriter("utf-8")(sys.stdout.detach())

form = cgi.FieldStorage()
choose = form.getfirst("group-1")
text1 = form.getfirst("field-name-1", "none")
text2 = form.getfirst("field-name-2", "none")
text3 = form.getfirst("field-name-3", "none")


print("Content-type: text/html\n")
print("""<!DOCTYPE HTML>
        <html>
        <head>
            <meta charset="utf-8">
            <title>form data handler</title>
        </head>
        <body>""")

print("<h1>form data handler</h1>")
print("<p>TEXT_1: {}</p>".format(text1))
print("<p>TEXT_2: {}</p>".format(text2))
print("<p>TEXT_2: {}</p>".format(text3))

print("""</body>
        </html>""")

if choose == "rad1":
    add_galaxy(
        name=text1,
        radius=int(text2),
        proximity=int(text3)
    )
elif choose == "rad2":
    add_system(
        name=text1,
        proximity=text2,
        galaxy_id=text3
    )
else:
    add_planet(
        name=text1,
        radius=text2,
        system_id=text3
    )


