FROM python:3.12-slim-bullseye

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY . /app

WORKDIR /app

RUN uv sync --frozen --no-cache

CMD ["/app/.venv/bin/uvicorn", "src.main:app", "--port", "8000", "--host", "0.0.0.0"]
