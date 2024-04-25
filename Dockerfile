FROM python:3.8

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код проекта в контейнер
COPY . .

# Запускаем приложение
CMD ["python", "managers.py"]
