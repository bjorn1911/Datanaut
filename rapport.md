# 🚀 Project: Datanaut

## 🌟 Overview

This project implements a complete **data-driven backend solution**, focusing on robust backend functionality and data management. Key components include data modeling, a fully normalized SQL Server database, Entity Framework integration, and complex data querying using LINQ.

This application serves as the core solution for the "Project Team" and is primarily a console-based application focusing on storing and retrieving information.

---

## 💻 What You Need to Run the Program

To run, build, and contribute to this project, ensure you have the following technologies and tools installed:

* **SQL Server**
* **SQL Server Management Studio (SSMS)**
* **Visual Studio** 
* **.NET** 
* **Entity Framework**
* **Entity Framework Tools** 

### 🛠 Database Setup Guide

Follow these steps to correctly initialize the database structure and populate it with seed data:

1.  **Open Repository**
    * Navigate to your local clone of the project repository.
2.  **Go to Schema Directory**
    * Enter the **`Datanaut/Schema`** folder.
3.  **Create Tables**
    * Execute the script **`Table.sql`** in your SQL environment.
4.  **Create Constraints**
    * Execute the script **`Constraint.sql`** to add Primary Keys, Foreign Keys, etc.
5.  **Create Triggers**
    * Execute the script **`trigger.sql`**.
    * **IMPORTANT NOTE:** You must **run each trigger individually** (in separate batches) in your database tool to ensure correct execution.
6.  **Insert Seed Data**
    * Execute the script **`SeedData.sql`** to populate the tables with the necessary base data.

---

## ⚙️ Development Environment (VS Code & Visual Studio)

While Visual Studio is required for optimal Entity Framework use, VS Code is recommended for file management and documentation editing.

| Tool/Extension Name | Purpose |
| :--- | :--- |
| **C#** (by Microsoft) | Provides IntelliSense, debugging, and code navigation for C# and .NET projects. |
| **SQL Server** (by Microsoft) | Facilitates connecting and running queries against the database directly within VS Code. |
| **Markdown All in One** | Improves the editing experience for documentation files (`README.md`, `rapport.md`). |

---

## 🚀 About the Program

This is a console-based application focused on **data management and sophisticated reporting**. The system is operated through a simple menu system, built using SQL Server (SSMS), Visual Studio, and Entity Framework.

### Weekly Assignment Goals (Definition of Done - DoD)

* Deliver a runnable end-product/demo.
* **Data Model:** ER-Diagram normalized to 3NF.
* Completed **Report** and **Reflection** in `docs/rapport.md`.
* Prepared and executed presentation.

---

## 📂 Workflow and Documentation

The full report, including reflection on the work process and team dynamics, is located in the **`docs/rapport.md`** file.

### Session Report (December 16, 2025)

| Category | Details |
| :--- | :--- |
| **Reporter and Date** | Sepideh, 2025-12-16 |
| **Participants (Attendance)** | Sepideh, Björn, Johan, Coday |
| **Sprint Goal (DoD)** | Interpret the order, create an ER-Diagram normalized to 3NF, and start the database in SQL Server. |
| **Activities** | Discussion of requirements, ER-Diagram design, task division. |
| **Problems/Obstacles** | Initial difficulties encountered with Foreign Keys and table relationships during SQL setup. |

### How to Fork a Project on GitHub

To contribute to this project, you should first fork the repository:

1.  **Go to the repository:** Open the GitHub page of this project.
2.  **Click the “Fork” button:** In the upper-right corner of the page, click the Fork button.
3.  **Choose your GitHub account:** Select your own account or organization.
4.  **Wait for GitHub to create the fork:** This process is usually quick.
5.  **You now have your own copy:** Find it under your profile and start working.

---

## 🛠 Technologies Used

* Visual Studio
* C#
* SQL Server (SSMS)
* Entity Framework
* LINQ (Standard Query Operators)

---

## 🤝 Collaborators

| Name | Role during Session/Contribution |
| :--- | :--- |
| **Sepideh Shoghirabani** | Reporter, Documentation, README |
| **Björn** | SQL Database Setup, Table Creation |
| **Johan** | Process Reflection  |
| **Coday** | C# Console Application Development |

