from flask import Flask, request, jsonify
from flask_cors import CORS 

app = Flask(__name__)
CORS(app)

@app.route('/submit-data', methods=['POST'])
def submit_data():
    data = request.get_json()

    input1 = data.get('input1')
    input2 = data.get('input2')

    print(f"Received Input 1: {input1}, Input 2: {input2}")

    return jsonify({'input1': input1, 'input2': input2})

if __name__ == '__main__':
    app.run(debug=True)