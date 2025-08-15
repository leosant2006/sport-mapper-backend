-- Create database (run this manually if needed)
-- CREATE DATABASE calcio_mapper;

-- Users table
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    is_admin BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sports venues table (replaces football_fields)
CREATE TABLE IF NOT EXISTS sports_venues (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL,
    address TEXT,
    city VARCHAR(100),
    province VARCHAR(10),
    region VARCHAR(100),
    sport_type VARCHAR(50) NOT NULL, -- football, swimming, basketball, tennis, etc.
    surface_type VARCHAR(50), -- erba naturale, sintetica, terra, cemento, etc.
    venue_type VARCHAR(50), -- 11vs11, 7vs7, 5vs5, singolo, doppio, etc.
    is_public BOOLEAN DEFAULT true,
    has_lighting BOOLEAN DEFAULT false,
    has_changing_rooms BOOLEAN DEFAULT false,
    has_parking BOOLEAN DEFAULT false,
    opening_hours TEXT,
    prices TEXT,
    added_by_user_id INTEGER REFERENCES users(id),
    added_by_username VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_sports_venues_location ON sports_venues(latitude, longitude);
CREATE INDEX IF NOT EXISTS idx_sports_venues_city ON sports_venues(city);
CREATE INDEX IF NOT EXISTS idx_sports_venues_province ON sports_venues(province);
CREATE INDEX IF NOT EXISTS idx_sports_venues_region ON sports_venues(region);
CREATE INDEX IF NOT EXISTS idx_sports_venues_sport_type ON sports_venues(sport_type);

-- Insert some sample data for Italy
INSERT INTO sports_venues (name, description, latitude, longitude, city, province, region, sport_type, surface_type, venue_type, is_public, has_lighting, has_changing_rooms, has_parking) VALUES
('Campo Comunale San Siro', 'Campo da calcio comunale con erba naturale', 45.4642, 9.1900, 'Milano', 'MI', 'Lombardia', 'football', 'erba naturale', '11vs11', true, true, true, true),
('Centro Sportivo Comunale', 'Centro sportivo con campo da calcio', 41.9028, 12.4964, 'Roma', 'RM', 'Lazio', 'football', 'erba sintetica', '11vs11', true, true, true, true),
('Piscina Comunale Milano', 'Piscina olimpionica comunale', 45.4642, 9.1900, 'Milano', 'MI', 'Lombardia', 'swimming', 'acqua', 'olimpionica', true, true, true, true),
('Centro Tennis Roma', 'Centro tennis con 6 campi', 41.9028, 12.4964, 'Roma', 'RM', 'Lazio', 'tennis', 'terra rossa', 'singolo/doppio', true, true, true, true),
('Playground Basket Genova', 'Campo da basket all''aperto', 44.4056, 8.9463, 'Genova', 'GE', 'Liguria', 'basketball', 'cemento', 'singolo', true, false, false, true);

-- Update timestamp trigger function
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create triggers for updated_at
CREATE TRIGGER update_users_updated_at BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_sports_venues_updated_at BEFORE UPDATE ON sports_venues
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Field images table (for sports venues)
CREATE TABLE IF NOT EXISTS field_images (
    id SERIAL PRIMARY KEY,
    field_id INTEGER REFERENCES sports_venues(id) ON DELETE CASCADE,
    image_url VARCHAR(500) NOT NULL,
    uploaded_by INTEGER REFERENCES users(id),
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_primary BOOLEAN DEFAULT false
);

-- Create indexes for field images
CREATE INDEX IF NOT EXISTS idx_field_images_field_id ON field_images(field_id);
CREATE INDEX IF NOT EXISTS idx_field_images_uploaded_by ON field_images(uploaded_by);

-- Venue reports table
CREATE TABLE IF NOT EXISTS venue_reports (
    id SERIAL PRIMARY KEY,
    venue_id INTEGER REFERENCES sports_venues(id) ON DELETE CASCADE,
    reported_by_user_id INTEGER REFERENCES users(id),
    report_type VARCHAR(50) NOT NULL, -- 'non_esiste', 'info_errate', 'altro'
    description TEXT,
    status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'resolved', 'rejected'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for venue reports
CREATE INDEX IF NOT EXISTS idx_venue_reports_venue_id ON venue_reports(venue_id);
CREATE INDEX IF NOT EXISTS idx_venue_reports_reported_by ON venue_reports(reported_by_user_id);
CREATE INDEX IF NOT EXISTS idx_venue_reports_status ON venue_reports(status);

-- Create trigger for venue_reports updated_at
CREATE TRIGGER update_venue_reports_updated_at BEFORE UPDATE ON venue_reports
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Create admin account (password: Paperinik2006)
INSERT INTO users (username, email, password_hash, is_admin) VALUES 
('Leosant06', 'leonardo.santoro2006@hotmail.com', '$2b$10$IOHdqS.8N8mHV08mALZaYe4Tuu64mArcHww1JQ7T05JLJsXILljny', true)
ON CONFLICT (username) DO UPDATE SET 
    email = EXCLUDED.email,
    password_hash = EXCLUDED.password_hash,
    is_admin = EXCLUDED.is_admin;
