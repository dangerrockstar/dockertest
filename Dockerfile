FROM python:3
# work dir in con
WORKDIR /docker_test
# copy repo
COPY requirements.txt .
# install dep
RUN pip install --no-cache-dir -r requirements.txt

# copy our project
COPY  . . 
# run app
CMD [ "python", "app.py" ]
