from distutils.log import debug
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello World from Flask!!!"

@app.route('/second')
def second():
    return "Anime izlemek için lütfen bekleyiniz..."

@app.route('/third/subthird')
def third():
    return "Sadece bekleyiniz..."

@app.route('/fourth/<string:id>')
def fourth(id):
    return f'Id number of this is {id}'    


if __name__ == "__main__" :
    app.run(debug=True, port=80)