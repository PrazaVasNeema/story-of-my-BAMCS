from db import sqlite_connection
from typing import Dict, List
from lxml import etree
import sqlite3


def dict_to_xml(input_dict: Dict) -> etree.ElementBase:
    el = etree.Element("element")
    for key in input_dict.keys():
        attr = etree.Element("attr")
        attr.set("key", key)
        attr.set("value", str(input_dict[key]))
        el.append(attr)
    return el


def export_to_file(dict_list: List, path: str):
    root = etree.Element("items")
    for item in dict_list:
        root.append(dict_to_xml(item))
    with open(path, "w+") as file:
        file.write(etree.tostring(root, pretty_print=True).decode("utf-8"))

@sqlite_connection
def sql_to_xml(con: sqlite3.Connection):
    con.row_factory = sqlite3.Row
    cur = con.cursor()
    cur.execute("select * from GALAXIES;")
    rows = [dict(row) for row in cur.fetchall()]
    export_to_file(rows, 'SPACE.xml')


sql_to_xml()
