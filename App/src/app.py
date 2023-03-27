from flask import Flask, json, render_template, request, redirect, url_for, jsonify
from flask_mysqldb import MySQL
import json, collections
import os

app = Flask(__name__)

mysql = MySQL(app)

@app.route('/')
def Index():
    return jsonify({"response": "app running - GET OK v 1.0 SoftServe Project"})


if __name__ == '__main__':
    app.run(port = 3000, debug = True, host="0.0.0.0")