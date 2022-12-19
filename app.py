from flask import Flask
app = Flask()

@app.route('/')
def checkHealth():
    html = f"<h2>Welcome to my page! My name is KhoaDD6</h2><h6>App version is v1.0.0</h6>"
    return html.format(format)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)
