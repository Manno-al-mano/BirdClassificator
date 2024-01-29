FROM python:3.10-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE  8087
RUN mkdir ~/.streamlit
RUN cp config.toml ~/.streamlit/config.toml
WORKDIR /app
ENTRYPOINT [ "streamlit", "run" ]
CMD [ "app.py" ]