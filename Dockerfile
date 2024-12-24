# Используем базовый образ Python
FROM python:3.10-slim

# Установим рабочую директорию
WORKDIR /app

# Скопируем зависимости в контейнер
COPY requirements.txt .

# Установим зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Скопируем все файлы проекта
COPY . .

# Укажем порт, который будет использоваться
EXPOSE 8000

# Команда для запуска приложения
CMD ["python", "app.py"]
