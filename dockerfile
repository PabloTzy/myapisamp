# Gunakan image Python dari Docker Hub
FROM python:3.8

# Set working directory di dalam container
WORKDIR /app

# Salin file requirements.txt dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin file index.py ke dalam container
COPY index.py .

# Tentukan perintah untuk menjalankan aplikasi saat container dimulai
CMD ["python", "index.py"]
  
