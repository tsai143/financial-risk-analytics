-- Create database only if it does not already exist
CREATE DATABASE IF NOT EXISTS financial_analytics;

-- Select the database for use
USE financial_analytics;

-- =====================================================
-- Table: assets
-- Purpose: Stores master data for financial instruments
-- =====================================================
CREATE TABLE IF NOT EXISTS assets (
    asset_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique identifier for each asset
    ticker VARCHAR(10) NOT NULL UNIQUE,         -- Stock / instrument symbol (unique)
    asset_name VARCHAR(100) NOT NULL,           -- Full name of the asset
    sector VARCHAR(50) NOT NULL,                -- Sector classification (e.g., Banking, IT)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Record creation timestamp
);

-- =====================================================
-- Table: market_prices
-- Purpose: Stores daily adjusted prices for assets
-- =====================================================
CREATE TABLE market_prices (
    price_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each price record
    asset_id INT NOT NULL,                      -- References asset in assets table
    trade_date DATE NOT NULL,                   -- Trading date
    adj_close DECIMAL(15,6) NOT NULL,            -- Adjusted closing price
    volume BIGINT,                              -- Trading volume
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Record creation timestamp

    -- Foreign key constraint to enforce referential integrity
    CONSTRAINT fk_asset
        FOREIGN KEY (asset_id)
        REFERENCES assets(asset_id)
);

-- =====================================================
-- Indexes for query performance optimization
-- =====================================================

-- Index to speed up date-based queries
CREATE INDEX idx_trade_date ON market_prices(trade_date);

-- Composite index for asset-wise time series analysis
CREATE INDEX idx_asset_date ON market_prices(asset_id, trade_date);

-- =====================================================
-- Validation / inspection queries
-- =====================================================

-- List all tables in the database
SHOW TABLES;

-- View structure of assets table
DESCRIBE assets;

-- View structure of market_prices table
DESCRIBE market_prices;

-- View complete DDL for market_prices table
SHOW CREATE TABLE market_prices;
