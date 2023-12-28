FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

ENV PORT 8080
ENV HOST 0.0.0.0

# Copy the requirements file to the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

# Copy the rest of the application files to the container
COPY . .

# Set the command to run when the container starts
CMD ["python", "app.py"]
