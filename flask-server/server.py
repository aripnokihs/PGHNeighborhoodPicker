from flask import Flask

app = Flask(__name__)

# Members API Route
@app.route("/members")
# def hello_world():
#     return "<p>Hello, World!</p>"
def members():
    return {"members" : ["Member1", "Member2", "Member3"]}

if __name__ == "__main__":
    app.run(debug=True)