-- Create table for multiple images per field
CREATE TABLE IF NOT EXISTS field_images (
    id SERIAL PRIMARY KEY,
    field_id INTEGER REFERENCES football_fields(id) ON DELETE CASCADE,
    image_url TEXT NOT NULL,
    uploaded_by INTEGER REFERENCES users(id),
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_primary BOOLEAN DEFAULT false
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_field_images_field_id ON field_images(field_id);
CREATE INDEX IF NOT EXISTS idx_field_images_uploaded_by ON field_images(uploaded_by);
CREATE INDEX IF NOT EXISTS idx_field_images_primary ON field_images(is_primary);

-- Migrate existing single images to new table
INSERT INTO field_images (field_id, image_url, uploaded_by, uploaded_at, is_primary)
SELECT id, image_url, image_uploaded_by, image_uploaded_at, true
FROM football_fields 
WHERE image_url IS NOT NULL;

-- Remove old image columns from football_fields table
ALTER TABLE football_fields DROP COLUMN IF EXISTS image_url;
ALTER TABLE football_fields DROP COLUMN IF EXISTS image_uploaded_by;
ALTER TABLE football_fields DROP COLUMN IF EXISTS image_uploaded_at;
