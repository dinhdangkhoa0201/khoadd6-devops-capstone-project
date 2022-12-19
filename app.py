from flask import Flask

app = Flask(__name__)

@app.route('/')
def checkHealth():
    version = "v1.0.0"
    html = f"<h2>Welcome to my page! My name is KhoaDD6</h2><h6>App version is ${version}</h6>"
    return html.format(format)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)
