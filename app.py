from bottle import Bottle, run, \
    template, debug, static_file

import os
import sys
import sqlite3 as lite

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
    c.execute('select * from products where `index` = 1')
    row = c.fetchone()
    return template('product', product = row)


run(app, host='localhost', port=8081)
