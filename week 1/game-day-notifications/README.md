### Day2: NBA Game Data Platform

# NBA Game Data Platform: Live Data Fetching, Storage, and User Access

## Project Overview
This project delivers a seamless experience for NBA fans to view live game data and access historical game information for any selected date. The system dynamically uploads NBA game data daily to AWS S3 and allows users to interact with the data through a frontend application. Additionally, it uses AWS SNS to send email updates for selected game events or schedules.

## Key Features
- ✅ **Fetches live NBA game data** using the SportsData API.
- ✅ **Stores data on AWS S3**, enabling easy retrieval from the frontend.
- ✅ **Displays game details** including scores, channels, and schedules in a user-friendly interface.
- ✅ **Automated workflow** with AWS Lambda functions to manage API requests and data uploads to S3.
- ✅ **Email notifications** for game updates using AWS SNS.
- ✅ **Scalable and efficient**, ensuring long-term usability and accessibility.

## Tech Stack
- **Cloud Provider**: AWS
- **Services Used**: 
  - Amazon S3: Data storage
  - AWS Lambda: Serverless backend for API requests and S3 interactions
  - AWS SNS: Email notifications
- **Programming Languages**: 
  - Python: Backend and automation scripts
  - JavaScript (React): Frontend application
- **External API**: SportsData API

## How It Works
1. **Data Fetching**: Fetches live NBA game data daily using the SportsData API.
2. **Data Storage**: Saves the retrieved data to an AWS S3 bucket.
3. **Frontend Access**: A React-based frontend app fetches game data from S3, displaying it in a structured and user-friendly manner.
4. **Custom Date Selection**: Users can select a specific date, which triggers a backend process to fetch and update data accordingly.
5. **Email Notifications**: Sends game-related email notifications using AWS SNS for enhanced user engagement.

## Benefits
- **Real-Time Data**: Keeps NBA fans updated with live game details.
- **Ease of Access**: Centralized data storage in S3 allows fast and reliable access.
- **Automation**: Serverless architecture reduces operational overhead.
- **Scalability**: Designed to handle increasing user demand and data growth.

This platform combines cloud computing, serverless architecture, and real-time sports data to provide a modern, scalable, and engaging solution for NBA enthusiasts.
