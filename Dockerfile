
FROM python:3.9-slim


WORKDIR /app


COPY app.py .

CMD ["python", "app.py"]


#--------------
# Bouns of task
FROM python:3.9-slim AS builder
WORKDIR /app
COPY app.py .


FROM python:3.9-alpine
WORKDIR /app

COPY --from=builder /app/app.py . 

CMD ["python", "app.py"]