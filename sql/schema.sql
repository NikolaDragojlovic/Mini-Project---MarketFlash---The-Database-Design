-- Aditional table

CREATE TABLE industries (
        industry_id VARCHAR(20) PRIMARY KEY,
        type VARCHAR(50),
        details VARCHAR(50)
    );

-- Dummy for industries

INSERT INTO industries (industry_id, type, details) VALUES
      ('IND001', 'Technology', 'Software and IT services'),
      ('IND002', 'Fashion', 'Clothing and accessories'),
      ('IND003', 'Food & Beverage', 'Restaurants and food products'),
      ('IND004', 'Healthcare', 'Medical and pharmaceutical'),
      ('IND005', 'Automotive', 'Cars and vehicle services')
    ;


CREATE TABLE clients (
        client_id VARCHAR(20) PRIMARY KEY,
        company_name VARCHAR(50),
        address VARCHAR(20),
        email VARCHAR(50),
        phone INT,
        contact_person VARCHAR(30),
        industry_id VARCHAR(20),
        FOREIGN KEY (industry_id) REFERENCES industries(industry_id)
   );

-- Dummy for clients

INSERT INTO clients (client_id, company_name, address, email, phone, contact_person, industry_id) VALUES
      ('CLI001', 'TechCorp Solutions', 'Belgrade 123', 'info@techcorp.com', 381111000, 'Marko Petrovic', 'IND001'),
      ('CLI002', 'Fashion Forward', 'Novi Sad 456', 'contact@fashionfw.com', 381222000, 'Ana Nikolic', 'IND002'),
      ('CLI003', 'Taste Buds Restaurant', 'Nis 789', 'orders@tastebuds.com', 381333000, 'Stefan Jovic', 'IND003'),
      ('CLI004', 'HealthPlus Clinic', 'Kragujevac 321', 'info@healthplus.com', 381444000, 'Milica Stojanovic', 'IND004'),
      ('CLI005', 'AutoDrive Motors', 'Subotica 654', 'sales@autodrive.com', 381555000, 'Nemanja Milic', 'IND005')
    ;


CREATE TABLE employees (
        empl_id VARCHAR(20) PRIMARY KEY,
        first_name VARCHAR(30),
        last_name VARCHAR(30),
        address VARCHAR(50),
        email VARCHAR(50),
        phone INT,
        supervisor_id VARCHAR(20),
        FOREIGN KEY (supervisor_id) REFERENCES employees(empl_id)
    );

-- Dummy for employees

INSERT INTO employees (empl_id, first_name, last_name, address, email, phone, supervisor_id) VALUES
      ('EMP001', 'Jovana', 'Milosevic', 'Belgrade, Knez Mihailova 15', 'jovana.milosevic@company.com', 381601000, NULL),
      ('EMP002', 'Nikola', 'Stankovic', 'Belgrade, Takovska 22', 'nikola.stankovic@company.com', 381602000, 'EMP001'),
      ('EMP003', 'Marija', 'Jovanovic', 'Novi Sad, Zmaj Jovina 8', 'marija.jovanovic@company.com', 381603000, 'EMP001'),
      ('EMP004', 'Petar', 'Radovic', 'Nis, Obrenoviceva 45', 'petar.radovic@company.com', 381604000, 'EMP002'),
      ('EMP005', 'Teodora', 'Popovic', 'Kragujevac, Svetozara Markovica 12', 'teodora.popovic@company.com', 381605000, 'EMP002')
    ;


CREATE TABLE platforms (
        platform_id VARCHAR(20) PRIMARY KEY,
        platform_name VARCHAR(30),
        url VARCHAR(100),
        contact_person VARCHAR(50),
        contact_phone INT,
        contact_email VARCHAR(50)
);

-- Dummy for platforms

INSERT INTO platforms (platform_id, platform_name, url, contact_person, contact_phone, contact_email) VALUES
      ('PLT001', 'Facebook', 'https://www.facebook.com', 'Facebook Support Team', 381701000, 'support@facebook.com'),
      ('PLT002', 'Instagram', 'https://www.instagram.com', 'Instagram Business Team', 381702000, 'business@instagram.com'),
      ('PLT003', 'YouTube', 'https://www.youtube.com', 'YouTube Creator Support', 381703000, 'creators@youtube.com'),
      ('PLT004', 'TikTok', 'https://www.tiktok.com', 'TikTok Business', 381704000, 'business@tiktok.com'),
      ('PLT005', 'LinkedIn', 'https://www.linkedin.com', 'LinkedIn Marketing', 381705000, 'marketing@linkedin.com')
    ;


CREATE TABLE influencers (
        influencer_id VARCHAR(20) PRIMARY KEY,
        influencer_name VARCHAR(30),
        social_handle VARCHAR(20),
        follower_count INT,
        contact_details VARCHAR(20)
    );

-- Dummy for influencers

INSERT INTO influencers (influencer_id, influencer_name, social_handle, follower_count, contact_details) VALUES
      ('INF001', 'Milica Influencer', '@milica_style', 150000, 'milica@gmail.com'),
      ('INF002', 'Stefan Blogger', '@stefan_tech', 89000, 'stefan@gmail.com'),
      ('INF003', 'Ana Foodie', '@ana_eats', 245000, 'ana@gmail.com'),
      ('INF004', 'Marko Fitness', '@marko_fit', 178000, 'marko@gmail.com'),
      ('INF005', 'Jelena Travel', '@jelena_travels', 320000, 'jelena@gmail.com')
    ;


CREATE TABLE campaigns (
        campaign_id VARCHAR(20) PRIMARY KEY,
        campaign_name VARCHAR(20),
        start_date DATE,
        end_date DATE,
        budget NUMERIC,
        client_id VARCHAR(20),
        manager_id VARCHAR(20),
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (manager_id) REFERENCES employees(empl_id)
    );

-- Dummy for campaigns

INSERT INTO campaigns (campaign_id, campaign_name, start_date, end_date, budget, client_id, manager_id) VALUES
      ('CAM001', 'Summer Tech Launch', '2024-06-01', '2024-08-31', 50000.00, 'CLI001', 'EMP002'),
      ('CAM002', 'Fashion Week Promo', '2024-09-15', '2024-10-15', 35000.00, 'CLI002', 'EMP003'),
      ('CAM003', 'Food Festival 2024', '2024-07-01', '2024-07-31', 25000.00, 'CLI003', 'EMP004'),
      ('CAM004', 'Health Awareness', '2024-10-01', '2024-12-31', 40000.00, 'CLI004', 'EMP005'),
      ('CAM005', 'Auto Show Campaign', '2024-11-01', '2024-11-30', 60000.00, 'CLI005', 'EMP002')
    ;


CREATE TABLE contents (
        content_id VARCHAR(20) PRIMARY KEY,
        title VARCHAR(30),
        description VARCHAR(50),
        media_type VARCHAR(20),
        creation_date DATE,
        campaign_id VARCHAR(20),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
    );

-- Dummy for contents

INSERT INTO contents (content_id, title, description, media_type, creation_date, campaign_id) VALUES
      ('CON001', 'Tech Product Demo', 'Interactive demo of new software features', 'Video', '2024-05-15', 'CAM001'),
      ('CON002', 'Summer Collection Showcase', 'Latest fashion trends and styles', 'Image', '2024-08-20', 'CAM002'),
      ('CON003', 'Recipe Tutorial', 'Step by step cooking instructions', 'Video', '2024-06-25', 'CAM003'),
      ('CON004', 'Wellness Tips', 'Daily health and wellness advice', 'Article', '2024-09-10', 'CAM004'),
      ('CON005', 'Car Review', 'Detailed review of latest car models', 'Video', '2024-10-05', 'CAM005')
    ;


CREATE TABLE metrics (
        metric_id VARCHAR(20) PRIMARY KEY,
        impressions INT,
        clicks INT,
        engagement VARCHAR(20),
        conversion_rate NUMERIC,
        campaign_id VARCHAR(20),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
    );

-- Dummy for metrics

INSERT INTO metrics (metric_id, impressions, clicks, engagement, conversion_rate, campaign_id) VALUES
      ('MET001', 125000, 8500, '6.8%', 3.2, 'CAM001'),
      ('MET002', 89000, 5200, '5.8%', 2.8, 'CAM002'),
      ('MET003', 156000, 12000, '7.7%', 4.1, 'CAM003'),
      ('MET004', 203000, 15600, '7.6%', 3.9, 'CAM004'),
      ('MET005', 178000, 14200, '8.0%', 4.5, 'CAM005')
    ;


CREATE TABLE payments (
        payment_id VARCHAR(20) PRIMARY KEY,
        date VARCHAR(20),
        amount NUMERIC,
        payment_type VARCHAR(20),
        payment_details VARCHAR(30),
        campaign_id VARCHAR(20),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
    );

-- Dummy for payments

INSERT INTO payments (payment_id, date, amount, payment_type, payment_details, campaign_id) VALUES
      ('PAY001', '2024-06-01', 15000.00, 'Bank Transfer', 'Initial campaign payment', 'CAM001'),
      ('PAY002', '2024-09-01', 10000.00, 'Credit Card', 'Fashion week sponsorship', 'CAM002'),
      ('PAY003', '2024-07-01', 8000.00, 'Bank Transfer', 'Food festival advertising', 'CAM003'),
      ('PAY004', '2024-10-01', 12000.00, 'Wire Transfer', 'Health campaign launch', 'CAM004'),
      ('PAY005', '2024-11-01', 20000.00, 'Bank Transfer', 'Auto show premium package', 'CAM005')
    ;


CREATE TABLE advertisements (
        ad_id VARCHAR(20) PRIMARY KEY,
        ad_name VARCHAR(50),
        type VARCHAR(20),
        duration_days INT,
        budget NUMERIC,
        campaign_id VARCHAR(20),
        platform_id VARCHAR(20),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
        FOREIGN KEY (platform_id) REFERENCES platforms(platform_id)
    );

-- Dummy for advertisements

INSERT INTO advertisements (ad_id, ad_name, type, duration_days, budget, campaign_id, platform_id) VALUES
      ('AD001', 'Tech Innovation Banner', 'Display', 30, 5000.00, 'CAM001', 'PLT001'),
      ('AD002', 'Fashion Forward Video', 'Video', 15, 7500.00, 'CAM002', 'PLT002'),
      ('AD003', 'Taste Buds Promo', 'Sponsored Post', 20, 3000.00, 'CAM003', 'PLT003'),
      ('AD004', 'Health Tips Campaign', 'Story Ad', 45, 4500.00, 'CAM004', 'PLT004'),
      ('AD005', 'Auto Show Spotlight', 'Carousel', 25, 8000.00, 'CAM005', 'PLT005')
    ;

-- Aditional table (Many-to-Many)

CREATE TABLE campaigns_platforms (
        campaign_id VARCHAR(20),
        platform_id VARCHAR(20),
        PRIMARY KEY (campaign_id, platform_id),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
        FOREIGN KEY (platform_id) REFERENCES platforms(platform_id)
    );

-- Dummy for campaigns_platforms

INSERT INTO campaigns_platforms (campaign_id, platform_id) VALUES
      ('CAM001', 'PLT001'),
      ('CAM001', 'PLT003'),
      ('CAM002', 'PLT002'),
      ('CAM002', 'PLT004'),
      ('CAM003', 'PLT003'),
      ('CAM003', 'PLT001'),
      ('CAM004', 'PLT004'),
      ('CAM004', 'PLT005'),
      ('CAM005', 'PLT005'),
      ('CAM005', 'PLT001')
    ;

-- Aditional table (Many-to-Many)

CREATE TABLE campaigns_influencers (
        campaign_id VARCHAR(20),
        influencer_id VARCHAR(20),
        PRIMARY KEY (campaign_id, influencer_id),
        FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id),
        FOREIGN KEY (influencer_id) REFERENCES influencers(influencer_id)
    );

-- Dummy for campaigns_influencers

INSERT INTO campaigns_influencers (campaign_id, influencer_id) VALUES
      ('CAM001', 'INF002'),
      ('CAM001', 'INF004'),
      ('CAM002', 'INF001'),
      ('CAM002', 'INF005'),
      ('CAM003', 'INF003'),
      ('CAM003', 'INF001'),
      ('CAM004', 'INF004'),
      ('CAM004', 'INF002'),
      ('CAM005', 'INF005'),
      ('CAM005', 'INF003')
    ;


SELECT *
  FROM advertisements
  
SELECT *
  FROM industries
  
SELECT *
  FROM campaigns c
  JOIN campaigns_platforms cp
    ON c.campaign_id = cp.campaign_id
  JOIN platforms p
    ON cp.platform_id = p.platform_id
  JOIN clients cl
    ON c.client_id = cl.client_id
  JOIN industries ind
    ON cl.industry_id = ind.industry_id
 WHERE ind.type = 'Food & Beverage'
 
