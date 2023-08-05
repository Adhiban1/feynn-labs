from flask import Flask, send_file, request, render_template
import pandas as pd
from model import is_failure, failure_type

app = Flask(__name__)

@app.route('/', methods=['POST', 'GET'])
def home():
    if request.method == 'POST':
        f = request.files['file']
        f.save('src/uploaded/'+f.filename)

        df = pd.read_csv('src/uploaded/'+f.filename)

        df1 = is_failure(df)
        df2 = failure_type(df)
        
        df['is_failure'] = df1
        df['failure_type'] = df2

        df.to_csv('src/uploaded/output.csv', index=False)

        return send_file('uploaded/output.csv', as_attachment=True)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)