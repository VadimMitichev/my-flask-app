# Используем официальный образ Python в качестве базового образа
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем содержимое текущей директории в контейнер в /app
COPY . /app

# Устанавливаем необходимые зависимости из requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем pytest для запуска тестов
RUN pip install pytest

# Устанавливаем PYTHONPATH
ENV PYTHONPATH=/app

# Открываем порт 80 для доступа извне контейнера
EXPOSE 80

# Задаём переменную окружения
ENV FLASK_APP app.py

# Запускаем приложение Flask при запуске контейнера
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
