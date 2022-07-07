from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World! ...555'


@app.route('/a')
def get_post():
    return render_template('index.html')




if __name__ == '__main__':
    app.run()

