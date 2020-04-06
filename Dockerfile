FROM ubuntu
MAINTAINER <DjmPhysics@gmail.com>

RUN apt update && apt -y install python3-wxgtk4.0 python3-opencv

WORKDIR /opt
COPY modules /opt/modules
COPY gui.py /opt
CMD [ "python3", "./gui.py" ]
