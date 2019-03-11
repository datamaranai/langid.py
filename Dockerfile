FROM python:3.6

# Linux
# RUN adduser -D langid
# macOS
# RUN sudo sysadminctl -addUser langid

RUN mkdir -p /app/langid.py/

RUN git clone https://github.com/datamaranai/langid.py /app/langid.py/

WORKDIR /app/langid.py/

RUN git fetch origin

RUN git checkout -b development origin/development

RUN python setup.py install

RUN pip install gunicorn

EXPOSE 9008

RUN chmod +x ./boot.sh

ENTRYPOINT [ "./boot.sh" ]
