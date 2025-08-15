-- Add image support to football_fields table
ALTER TABLE football_fields ADD COLUMN IF NOT EXISTS image_url TEXT;
ALTER TABLE football_fields ADD COLUMN IF NOT EXISTS image_uploaded_by INTEGER REFERENCES users(id);
ALTER TABLE football_fields ADD COLUMN IF NOT EXISTS image_uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Create index for image queries
CREATE INDEX IF NOT EXISTS idx_football_fields_image ON football_fields(image_url) WHERE image_url IS NOT NULL;
