# chat/consumers.py
import json
from datetime import datetime
from channels.generic.websocket import WebsocketConsumer


class ChatConsumer(WebsocketConsumer):
    def connect(self):
        self.accept()

    def disconnect(self, close_code):
        print(f"### Connection Closed at {datetime.now()}")

    def receive(self, text_data):
        text_data_json = json.loads(text_data)
        message = text_data_json["message"]
        print(f"received message ${text_data_json} at {datetime.now()}")
        self.send(text_data=json.dumps({"message": message}))
