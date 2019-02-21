FROM python:3.5
ENV FLASK_APP=screeps_loan/screeps_loan.py
ENV SETTINGS=/app/settings
WORKDIR /app
COPY . /app
RUN pip install -e .
CMD ["screepsautospawner", "respawn"]