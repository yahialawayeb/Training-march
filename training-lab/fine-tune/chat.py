import openai
import json

# Set up OpenAI API credentials
openai.api_key = "mykey"

 # Load the JSON data from the file into a Python dictionary
with open('data.json', 'r') as f:
   # Define your training data
    training_data = json.load(f)
 

# Set up the fine-tuning prompt
prompt = input("human: ")

# Define the parameters for fine-tuning
params = {
    "model": "text-davinci-002",
    "prompt": prompt,
    "temperature": 0.5,
    "max_tokens": 1024,
   
}

# Fine-tune the model
response = openai.Completion.create(
    engine="davinci",
    prompt=params["prompt"],
    max_tokens=params["max_tokens"],
    temperature=params["temperature"],
   
)

# Print the response
print("AI :",response.choices[0].text)
