## Build and run the container

Set env vars:

$ export LANGID_VERSION=0.0.2

$ export LANGID_PORT=9008

Build the container:

$ docker build -t langid:$LANGID_VERSION .

Run: add -d to run in background

$ docker run --name langid -d -p 9008:$LANGID_PORT --rm langid:$LANGID_VERSION

To stop if it runs in the background:

$ docker stop langid