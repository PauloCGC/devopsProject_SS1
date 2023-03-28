from flask import Flask, json, render_template, request, redirect, url_for, jsonify
from flask_mysqldb import MySQL
import json, collections
import os

app = Flask(__name__)

mysql = MySQL(app)

@app.route('/')
def Index():
    return jsonify({"response": "app running - GET OK v 1.0 SoftServe Project"})


@app.route('/happy_coding_with_flask', methods=['GET'])
def get_happy_coding_function():
    if request.method == 'GET':
        json_response = {'meta':{'code': 201, 'message':'Happy Flask Coding!'}, 'AnObject': "ObjectValue"}
        return json.dumps(json_response), 201, {'Content-Type': 'application/json'}

if __name__ == '__main__':
    app.run(port = 3000, debug = True, host="0.0.0.0")