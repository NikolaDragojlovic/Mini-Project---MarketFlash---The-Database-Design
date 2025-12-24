# MarketFlash Database Design  Mini-Project
Marketing company database + Tableau dashboard

## Overview
This project involves the end-to-end transformation of MarketFlash, a growing marketing agency owned by Markus. 
As the business expanded to managing over 1,000 campaigns for 78 clients in 2023, the reliance on traditional worksheets became unsustainable.

The goal was to design and build a robust Relational Database Management System (RDBMS) and an interactive Tableau Dashboard
to provide clear visibility into business performance and support data-driven decision-making.

## Project Goals
- Clean & normalize data
- Build ERD (Crow’s Foot)
- Design relational database from worksheet data (1000 campaigns, 78 clients)
- Implement database with keys, constraints, and sample data
- Create Tableau dashboard for campaign performance 


## Technologies
- **Database**: Beekeeper Studio + SQLite
- **Visualization**: Tableau Public
- **Documentation**: Google Docs / .png / slides

## Deliverables
| File/Link | Description |
|-----------|-------------|
| [ERD (Crow Foot’s)](https://docs.google.com/presentation/d/1es_At4LNl-Mwy01cbvDl7Aa8ONjFciZ6K1LGSJ94R54/edit?usp=sharing) | Entity Relationship Diagram |
| [Functional Diagram ](https://docs.google.com/presentation/d/1mr2ule9UYh8W-jrca0I2mH56WhnDB77fdCkCf2wJmgk/edit?usp=sharing) | Functional ER Diagram |
| [Google sheet](https://docs.google.com/spreadsheets/d/1autLH0a8Y44-ymZTFKQSALpuRk05cxT4WOhh-Nf8AFk/edit?usp=sharing) | Cleaned marketflash_marketing_data_2023 |
| [SQL Scripts](https://docs.google.com/document/d/19gRYaSpGWyORcMuhAur8AVUWj3xOy0kUIu_Chl7Uhxo/edit?usp=sharing) | Database creation + constraints |
| [SQL Queries](https://drive.google.com/file/d/1nvQXk3qbrV9UWXZBGnXUvCOnmqmnHAg7/view?usp=sharing) | Sample queries |
| [Tableau](https://public.tableau.com/views/Market_flashProjectDashboard/MarketFlashProjectDashboard?:language=en-US&publish=yes&sid=&redirect=auth&display_count=n&origin=viz_share_link) | Interactive ROI & performance dashboard |
| [Tableau Screenshot](https://drive.google.com/file/d/1dXb6eTFu7SBgDbFLG7VzZ0jRTe2OXKO3/view?usp=sharing) | Static preview |
| [Market_flash Project Insights and Recommandations](https://docs.google.com/document/d/1UXq0UOtdQDqQgU4zxvLO9MpemdqCMgrOnEuHalOZOZA/edit?usp=sharing) | Conclusion |

| [Complete Folder MarketFlash GoogleDrive](https://drive.google.com/drive/folders/1D7oIracWH7WTmiqoliJl1jMMgZS-DFoX?usp=sharing) | All in one place |

## Database Schema Highlights

Entity-Relationship Model
The architecture includes 12 core entities designed through a Crow’s Foot ERD and Functional Diagram:

-Core Entities: campaigns, clients, employees, and platforms

-Operational Entities: influencers, contents, metrics, and advertisements

-Financial Entities: payments and industries (custom addition)

-Association tables: campaigns_influencers and campaigns_platforms

Key Relationships 1:1 1:M M:M
-Clients & Campaigns: One client may have multiple campaigns, but each campaign belongs to exactly one client.

-Platforms & Campaigns: A many-to-many relationship where one campaign can use multiple platforms and vice versa.

-Supervision: A self-referencing relationship in the Employees table where each employee is supervised by exactly one other employee.

-Performance: Each campaign is linked to exactly one set of Metrics and one or more Advertisements.

## Business Impact
- Replaced spreadsheet-based campaign tracking with a scalable relational database
- Enabled centralized management of 1,000+ campaigns across 78 clients
- Improved data consistency and integrity through normalization and constraints
- Provided clear visibility into campaign ROI, engagement, and performance metrics
- Supported faster, data-driven decision-making through interactive Tableau dashboards

## How to Use
1. Clone this repository
2. Open the **Google Sheet** to review cleaned source data
3. Run the **SQL Scripts** in Beekeeper Studio (SQLite)
4. Explore the **Tableau Dashboard** via the provided link
5. Review **Insights & Recommendations** for business conclusions

## Author
Nikola Dragojlović  
Junior Data Analyst (Masterschool DA & BI  April Cohort 2025)
