from bottle import Bottle, run, \
    template, debug, static_file

import os
import sys
import sqlite3 as lite
from bottle import response
from json import dumps

dirname = os.path.dirname(sys.argv[0])


app = Bottle()
debug(True)


@app.route('/static/<filename:re:.*\.css>')
def send_css(filename):
    return static_file(filename, root=dirname+'assets/css')


@app.route('/static/<filename:re:.*\.js>')
def send_js(filename):
    return static_file(filename, root=dirname+'assets/js')


@app.route('/')
def index():
    data = {"developer_name": "Alberto Negron",
            "developer_organization": "Lucerne Solutions",
            "root": dirname+'assets/js'}
    return template('index', data=data)

@app.route('/products')
def list_products():
    conn = lite.connect('demo.sqlite')
    c = conn.cursor()
    c.execute("select * from products")
    result = c.fetchall()
    c.close()
    return template('products', rows=result)

@app.route('/product/<pid>')
def show(pid):
    conn = lite.connect('demo.sqlite')
    c = conn.cursor()
    c.execute('select * from products where `index` = ?',(pid,))
    row = c.fetchone()
    c.close()
    return template('product', product = row)

@app.route('/country')
def show():
    return template('country')


def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

@app.route('/api/country/<name>')
def return_json(name):
    conn = lite.connect('demo.sqlite')
    conn.row_factory = dict_factory
    c = conn.cursor()
    c.execute('select * from airlines  where UPPER(country) = UPPER(?)',(name,))
    result = c.fetchall()
    c.close()
    if len(result) == 0:
        result = [{ "id": -1, "country": "Country does not exist." }]
    response.content_type = 'application/json'
    return dumps(result)


run(app, host='localhost', port=8081)
