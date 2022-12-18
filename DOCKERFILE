FROM python:3.9

# Create a working directory
WORKDIR /app

# Copy the application code into the working directory
COPY . .

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose the application's port
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host", "0.0.0.0"]
