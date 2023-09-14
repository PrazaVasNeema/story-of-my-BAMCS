from typing import Dict, List
from lxml import etree
import sqlite3

import cgi
form = cgi.FieldStorage()
name = form.getfirst("field-name-1", "none")



def xml_to_dict(el: etree.ElementBase) -> Dict:
    output_dict = {}
    for child in el:
        key = child.get("key")
        value = child.get("value")
        output_dict[key] = value
    return output_dict


def import_from_file(path: str) -> List:
    dict_list = []
    with open(path, "r") as file:
        text = file.read().encode("utf-8")
    items = etree.XML(text)
    for item in items:
        dict_list.append(xml_to_dict(item))
    return dict_list


def sqlite_connection(func):
    def wrapper(*args, **kwargs):
        with sqlite3.connect('C:\\Limbo\Purgatory\\05\\python\\4\\cgi-bin\\'+name+'.db') as con:
            kwargs['con'] = con
            res = func(*args, **kwargs)
            con.commit()
        return res
    return wrapper


@sqlite_connection
def new_db(con: sqlite3.Connection):
    cur = con.cursor()
    cur.execute("""
        CREATE TABLE IF NOT EXISTS GALAXIES (
            GALAXY_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            GALAXY_NAME TEXT,
            GALAXY_RADIUS INT,
		    PROXIMITY_TO_THE_MW INT
        );""")
    cur.execute("""
        CREATE TABLE IF NOT EXISTS SYSTEMS (
            SYSTEM_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            SYSTEM_NAME TEXT,
            GALAXY_ID INTEGER NOT NULL,
            PROXIMITY_TO_THE_CENTER INT,
            FOREIGN KEY (GALAXY_ID) REFERENCES GALAXIES(GALAXY_ID)
        );""")
    cur.execute("""
        CREATE TABLE IF NOT EXISTS PLANETS (
            PLANET_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            PLANET_NAME TEXT,
            SYSTEM_ID INTEGER NOT NULL,
            PLANET_RADIUS INT,
            FOREIGN KEY (SYSTEM_ID) REFERENCES SYSTEMS(SYSTEM_ID)
        );""")


@sqlite_connection
def xml_to_sql(con: sqlite3.Connection):
    rows = import_from_file('SPACE.xml')
    ins = []
    for row in rows:
        a = []
        i = 0
        for value in row.values():
            if i != 0:
                try:
                    a.append(int(value))
                except ValueError:
                    a.append(value)
            i += 1
        ins.append(a)
    cur = con.cursor()
    cur.executemany("""
        INSERT INTO GALAXIES (GALAXY_NAME, GALAXY_RADIUS, PROXIMITY_TO_THE_MW) VALUES (?, ?, ?);
    """, ins)


new_db()
xml_to_sql()
