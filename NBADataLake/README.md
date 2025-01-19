
```
# **NBA Data Lake Setup**

This repository contains the `setup_nba_data_lake.py` script, which automates the creation of a data lake for NBA analytics using AWS services. The script integrates **Amazon S3**, **AWS Glue**, and **Amazon Athena**, setting up the infrastructure needed to store and query NBA-related data.

---

## **Overview**

The `setup_nba_data_lake.py` script performs the following actions:

1. **Creates an Amazon S3 bucket** to store raw and processed data.
2. **Uploads sample NBA data** (JSON format) to the S3 bucket.
3. **Creates an AWS Glue database** and an external table for querying the data.
4. **Configures Amazon Athena** for querying data stored in the S3 bucket.

---

## **Prerequisites**

Before running the script, ensure you have the following:

### 1. **API Key from SportsData.io**
- Go to [SportsData.io](https://sportsdata.io) and create a free account.
- Hover over **Developers** in the top-left menu and click **API Resources**.
- Select **Introduction & Testing** and sign up for the **SportsDataIO API Free Trial**, ensuring you choose **NBA**.
- After completing the registration, open the email titled "Launch Developer Portal."
- Navigate to the **NBA** section in the portal, scroll down to **Standings**, and locate the **Query String Parameters** section.
- Copy your API key for later use.

### 2. **AWS IAM Role/Permissions**
Ensure the user or role running the script has the following permissions:

#### **S3 Permissions**
- `s3:CreateBucket`
- `s3:PutObject`
- `s3:DeleteBucket`
- `s3:ListBucket`

#### **Glue Permissions**
- `glue:CreateDatabase`
- `glue:CreateTable`
- `glue:DeleteDatabase`
- `glue:DeleteTable`

#### **Athena Permissions**
- `athena:StartQueryExecution`
- `athena:GetQueryResults`

---

## **Getting Started**

### **Step 1: Open the AWS CloudShell Console**
1. Go to [AWS Console](https://aws.amazon.com) and sign in to your account.
2. In the top navigation bar, click the **CloudShell** icon (a square with `>_` inside) to open the terminal.

---

### **Step 2: Create the `setup_nba_data_lake.py` File**
1. In the CloudShell CLI, type:
   ```bash
   nano setup_nba_data_lake.py
   ```
2. Open the GitHub repository where the `setup_nba_data_lake.py` file is located.
3. Copy the contents of the file and paste it into the CloudShell editor.
4. Locate the section under `# SportsData.io configurations` labeled `api_key`. Paste your API key within the quotation marks:
   ```python
   api_key = "YOUR_SPORTSDATA_API_KEY"
   ```
5. Save and exit:
   - Press `Ctrl + X` to exit.
   - Press `Y` to confirm saving.
   - Press `Enter` to confirm the file name.

---

### **Step 3: Create a `.env` File**
1. In the CloudShell CLI, type:
   ```bash
   nano .env
   ```
2. Paste the following content into the file, replacing `your_sportsdata_api_key` with your actual API key:
   ```env
   SPORTS_DATA_API_KEY=your_sportsdata_api_key
   NBA_ENDPOINT=https://api.sportsdata.io/v3/nba/scores/json/Players
   ```
3. Save and exit:
   - Press `Ctrl + X` to exit.
   - Press `Y` to confirm saving.
   - Press `Enter` to confirm the file name.

---

### **Step 4: Run the Script**
Execute the script to set up the data lake:
```bash
python3 setup_nba_data_lake.py
```
If successful, you should see messages confirming that:
- Resources were created.
- Sample data was uploaded.
- Data lake setup was completed.

---

### **Step 5: Verify the Resources**

#### **Check Amazon S3**
1. Open the AWS Console and search for **S3** in the search bar.
2. Click the bucket named `sports-analytics-data-lake`.
3. Navigate to the **raw-data** folder and locate the `nba_player_data.json` file.
4. Open the file to view its contents, which will include a variety of NBA player data in JSON format.

#### **Query Data with Amazon Athena**
1. Open the **Athena** service in the AWS Console.
2. Use the following sample query to retrieve data:
   ```sql
   SELECT FirstName, LastName, Position, Team
   FROM nba_players
   WHERE Position = 'PG';
   ```
3. Click **Run Query** and view the output in the **Query Results** section.

---

## **What We Learned**

This project demonstrates key concepts in modern cloud data engineering:

1. **Securing AWS Services**: Setting up least-privilege IAM policies ensures secure access to resources.
2. **Automating Resource Creation**: Using scripts to automate AWS infrastructure deployment saves time and minimizes errors.
3. **Integrating APIs**: Incorporating external APIs like SportsData.io adds real-world data to your workflows.

---

## **Future Enhancements**

1. **Automate Data Ingestion**: Use **AWS Lambda** to automate data uploads to S3.
2. **Data Transformation Layer**: Implement an ETL process using **AWS Glue** to clean and transform the raw data.
3. **Advanced Analytics**: Add dashboards and visualizations with **AWS QuickSight** to enhance data insights.

---

## **Conclusion**

With just a few lines of Python and the power of AWS, we created a robust NBA analytics data lake. This project serves as a foundation for real-time sports analytics, enabling developers to scale and enhance functionality further. Whether you’re a cloud enthusiast or a data engineer, this tutorial provides a practical guide to combining AWS services with external data sources.

Feel free to explore, modify, and share your thoughts or contributions to the repository! 🚀

---

### **Resources**
- [AWS CloudShell](https://aws.amazon.com/cloudshell/)
- [SportsData.io](https://sportsdata.io/)
- [AWS Glue Documentation](https://docs.aws.amazon.com/glue/)
- [Amazon Athena Documentation](https://docs.aws.amazon.com/athena/)

---
```