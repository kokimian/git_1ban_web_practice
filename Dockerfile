FROM python:3.9.0

WORKDIR /home/

RUN echo "vaerfgay"

RUN git clone https://github.com/kokimian/git_1ban_web_practice.git

WORKDIR /home/git_1ban_web_practice/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=ianterest.settings.deploy && python manage.py migrate --settings=ianterest.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=ianterest.settings.deploy ianterest.wsgi --bind 0.0.0.0:8000"]
