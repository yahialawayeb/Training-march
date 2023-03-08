import os
import openai
from flask import Flask, render_template, request

openai.api_key = 'mykey'

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('./tamplates/index.html')

@app.route('/chat', methods=['POST'])
def start_chatbot():
      prompt = request.form['prompt']
      bot_message = generate_response(prompt)
      return {'response': bot_message}


def generate_response(prompt):
    response = openai.Completion.create(
      model="text-davinci-003",
      prompt=prompt,
      temperature=0,
      max_tokens=4000,
      top_p=1,
      frequency_penalty=0.5,
      presence_penalty=0
    )
    message = response.choices[0].text.strip()
    return message



if __name__ == '__main__':
    app.run(host="0.0.0.0")