FROM python:3.10

# Установка зависимостей
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Копирование кода в контейнер
COPY . /app

# Определение команды запуска приложения
CMD ["python", "managers.py", "runserver", "0.0.0.0:8000"]
