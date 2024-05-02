# SRE-Assessment
# Development Environment Management System

The Development Environment Management System is a robust web-based platform designed to enable employees to configure, launch, and manage development environments efficiently using Kubernetes. It streamlines the setup process, offers scalable deployment options, and provides comprehensive monitoring to optimize resource usage.

## Features

### User Interface
- **Configurable Environments**: Users can easily select base images, choose software packages, and specify resource limits (CPU, RAM, GPU) through a user-friendly web interface.
- **Real-time Updates**: The system provides real-time feedback on the status of environment setups and deployments.

### Automated Kubernetes Deployment
- **Dynamic Resource Allocation**: Automatically scales resources up or down based on real-time demand using Kubernetes.
- **Deployment Management**: Supports creating, updating, and deleting environments directly through the UI.

### Monitoring and Notifications
- **Resource Monitoring**: Integrated with Prometheus and Grafana for detailed monitoring of resource consumption and performance metrics.
- **Alerts and Notifications**: Configurable notifications for critical performance metrics and system health alerts.

### Security and Compliance
- **Secure Access**: Implements rigorous security protocols for accessing development environments, including SSH and secured API endpoints.
- **Compliance and Logging**: Ensures compliance with industry standards and provides comprehensive logging for auditing and troubleshooting.

## Technologies Used

### Frontend
- **React**: Utilizes React for building a dynamic and responsive user interface.
- **Material-UI**: Leverages Material-UI for designing sleek, intuitive components and layouts.

### Backend
- **Node.js and Express.js**: The server-side logic is handled by Express.js running on a Node.js server, ensuring efficient handling of API requests.
- **MongoDB**: Uses MongoDB for storing user configurations and deployment data, facilitated by Mongoose for object data modeling.

### Kubernetes and DevOps
- **Kubernetes**: Manages containerized environments, handling deployment, scaling, and management of containerized applications.
- **Helm Charts**: Utilizes Helm charts for packaging and deploying applications to Kubernetes clusters.

### Monitoring
- **Prometheus and Grafana**: For real-time monitoring and visualization of metrics collected from Kubernetes and application logs.

## Getting Started

To set up the project locally:
1. Clone the repository:
   ```bash
   git clone https://github.com/joyce235/SRE-Assessment.git
   cd SRE-Assessment
  # Install backend dependencies and start the server:
    cd backend
    npm install
    npm start
  # Install frontend dependencies and launch the application:
    cd ../frontend
    npm install
    npm start
  Visit http://localhost:3000 to access the application and begin managing your development environments.

# About
    This project is designed to simplify and enhance the management of development environments, making it easier for teams to develop, test, and deploy applications in a consistent and isolated manner.





