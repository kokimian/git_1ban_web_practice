FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/kokimian/git_1ban_web_practice.git

WORKDIR /home/git_1ban_web_practice/

RUN echo "SECRET_KEY=django-insecure-z^av42t3wn@#2su-h)zua(_wm2s-08ah_qwdj6&3-f6rynm&5g" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]