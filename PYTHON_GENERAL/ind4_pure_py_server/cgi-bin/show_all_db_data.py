#!/usr/bin/env python3
# -*- coding: cp1251 -*-


import cgi

from db import get_galaxies, get_systems, get_planets

print("Content-type: text/html; charset=utf-8")
print(f'''
        <!DOCTYPE html>
        <html lang="ru">
            <head>
                <title>DB OVERLOOK</title>
            </head>
            <body>
                <h1>Галактики</h1>
                <ul>
                        ''')
try:
    print("<p>ID | название | радиус | расстояние до МП </p>")
    for line in get_galaxies():
        print(f'<p>{line}</p></b>')
    print('''
                    </ul>
                    <td>
                    <h1>Системы</h1>
                    </td>
                    <ul>''')
    print("<p>ID | название | ID галактики | расстояние до центра галактики </p>")
    for line in get_systems():
        print(f'<li>{line}</li>')
    print('''
                    </ul>
                    <td>
                    <h1>Планеты</h1>
                    </td>
                    <ul>''')
    print("<p>ID | название | ID системы | радиус </p>")
    for line in get_planets():
        print(line[0])
        print(f'<p>{line}</p></b>')

    print('''
                    </ul>
                    </div>
                <form action="../cgi-bin/to_xml.py">
                    <input type="submit" class="btn btn-success" value="xml файл">
                </form>
                        <label>
            Название базы:
                <form action="/cgi-bin/from_xml.py">
            <input  name="field-name-1" onfocus="this.value=''" value="Название" type="text" />
            </label><br />
                    <label>
        <input type="submit" value="Получить базу">
            </label>
            </form>
    ''')
except Exception:
    pass
print(get_planets()[2][1])
print('''
                <a href="../../index.html">Назад</a><br>
            </body>
        </html>
        ''')