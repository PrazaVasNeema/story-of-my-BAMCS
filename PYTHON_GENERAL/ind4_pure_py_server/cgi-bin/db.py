import sqlite3

import sqlite3
from typing import List


def sqlite_connection(func):
    def wrapper(*args, **kwargs):
        with sqlite3.connect('C:\\Limbo\\Purgatory\\05\\python\\4\\cgi-bin\\db.db') as con:
            kwargs['con'] = con
            res = func(*args, **kwargs)
            con.commit()
        return res
    return wrapper


@sqlite_connection
def add_galaxy(con: sqlite3.Connection, name, radius, proximity):
    cur = con.cursor()
    cur.execute('''
        INSERT INTO GALAXIES (GALAXY_NAME, GALAXY_RADIUS, PROXIMITY_TO_THE_MW) VALUES (?, ?, ?);
    ''', (name, radius, proximity))


@sqlite_connection
def add_system(con: sqlite3.Connection, name, proximity, galaxy_id):
    cur = con.cursor()
    cur.execute('''
        INSERT INTO SYSTEMS (SYSTEM_NAME, PROXIMITY_TO_THE_CENTER, GALAXY_ID) VALUES (?, ?, ?);
    ''', (name, proximity, galaxy_id))


@sqlite_connection
def add_planet(con: sqlite3.Connection, name, radius, system_id):
    cur = con.cursor()
    cur.execute('''
        INSERT INTO PLANETS (PLANET_NAME, PLANET_RADIUS, SYSTEM_ID) VALUES (?, ?, ?);
    ''', (name, radius, system_id))


@sqlite_connection
def get_galaxies(con: sqlite3.Connection) -> List:
    cur = con.cursor()
    cur.execute('''
            SELECT * FROM GALAXIES;
        ''')
    return cur.fetchall()


@sqlite_connection
def get_systems(con: sqlite3.Connection) -> List:
    cur = con.cursor()
    cur.execute('''
            SELECT * FROM SYSTEMS;
        ''')
    return cur.fetchall()


@sqlite_connection
def get_planets(con: sqlite3.Connection) -> List:
    cur = con.cursor()
    cur.execute('''
            SELECT * FROM PLANETS;
        ''')
    return cur.fetchall()

