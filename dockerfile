FROM python:3.8-slim-buster
#FROM python:3.12-rc-alpine
WORKDIR /app
COPY . .
RUN pip install --upgrade pip && pip install -r requirements.txt
#RUN python tests/test.py
#EXPOSE 8080
#RUN export $(cat .env | xargs) 
#&& python hello.py
#CMD ["node", "src/index.js"]
#CMD ["python", "application.py"]
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
