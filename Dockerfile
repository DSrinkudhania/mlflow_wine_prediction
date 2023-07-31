# Use the official Python image as the base image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required packages
RUN pip install --no-cache-dir pandas numpy scikit-learn mlflow flask

# Expose the port on which your Flask app will run (you can change it as needed)
EXPOSE 8080

# Set environment variables (you can add more if needed)
ENV MLFLOW_TRACKING_URI=https://dagshub.com/DSrinkudhania/mlflow_wine_prediction.mlflow
ENV MLFLOW_TRACKING_USERNAME=DSrinkudhania
ENV MLFLOW_TRACKING_PASSWORD=662b90ce80c767f367e647b9eb3779b97cd9cd61

# Define the command to run your Flask app when the container starts
CMD ["python", "app.py"]
