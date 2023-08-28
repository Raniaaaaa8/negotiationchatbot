FROM python:3.9-slim

RUN apt-get update && apt-get upgrade -y

WORKDIR /usr/src/app/chatbot

# Exposing default port for streamlit
EXPOSE 5000

# Install requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy necessary files
COPY . .
ENV FLASK_APP=main_Blender_90M.py


# Launch app when container is run

CMD ["flask", "run", "--host=0.0.0.0"]
