from fastapi import FastAPI, Request
from pydantic import BaseModel
import requests

app = FastAPI()

class StoryInput(BaseModel):
    words: list[str]
    topic: str
    level: str
    sentiment: str
    length: str
    word_frequencies: list[str]

@app.post("/generate")
def generate_story(data: StoryInput):
    # Prompt oluşturma
    word_prompt = "\n".join([f'- "{w}" exactly {f[1:]} times' for w, f in zip(data.words, data.word_frequencies)])
    
    prompt = f"""
Write a {data.length.lower()} and {data.topic.lower()} story suitable for {data.level.upper()} level English learners. 
The story should have a {data.sentiment.lower()} tone (no emotions) and should not include complex vocabulary.

Include the words:
{word_prompt}

Make sure the words are naturally integrated in the story. Highlight these words by surrounding them with double asterisks (**like this**). Keep the sentence structure simple and concise.
"""

    # Ollama API’ye POST isteği
    response = requests.post(
        "http://localhost:11434/api/generate",
        json={
            "model": "gemma3:12b",  # Model ismi sende neyse o yazılmalı
            "prompt": prompt,
            "stream": False
        }
    )

    output = response.json()
    return {
        "story": output.get("response", "").strip()
    }
