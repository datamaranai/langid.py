## Build and run the container

On the `development` branch.

Set env vars:

$ export LANGID_VERSION=0.0.2

$ export LANGID_PORT=9008

Build the container:

$ docker build -t langid:$LANGID_VERSION .

If your code doesn't update, you might need to change the above command to:

$ docker build --no-cache -t langid:$LANGID_VERSION .

Run: add -d to run in background. Remembet to have an outbound rule in aws at $LANGID_PORT to your public IP address!

$ docker run --name langid -d -p 9008:$LANGID_PORT --rm langid:$LANGID_VERSION

To stop if it runs in the background:

$ docker stop langid