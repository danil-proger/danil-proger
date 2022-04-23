from ubuntu:20.04
RUN pip install flask
COPY . opt/techprog
WORKDIR opt/techprog
RUN mkdir build && cd build && cmake .. && make
RUN useradd -s /bin/bash tp2022user
USER tp2022user
ENTRYPOINT python3 app.py --host 0.0.0.0 --port 8898
EXPOSE 8898




