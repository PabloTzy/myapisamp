# Gunakan image Python resmi sebagai parent image
FROM python:3.8

# Setel working directory ke /app
WORKDIR /app

# Salin seluruh konten direktori saat ini ke dalam container di /app
COPY --chown=user:group . /app

# Install semua paket yang diperlukan yang tercantum di requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Buat port 8080 tersedia bagi dunia luar container
EXPOSE 8080

# Jalankan aplikasi Python saat container diluncurkan
CMD ["python", "index.py"]
