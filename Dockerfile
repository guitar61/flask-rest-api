FROM python:3.6-slim-buster

WORKDIR /app

# Copy the dependencies file
COPY requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application files
COPY . .

# Expose port 4000 to allow incoming requests
EXPOSE 4000

# Run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=4000"]

