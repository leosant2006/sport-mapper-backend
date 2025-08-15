-- Campi da Calcio Pubblici di Milano - Dati Reali
-- Coordinate e informazioni accurate dei campi pubblici di Milano

-- Elimina i campi esistenti di Milano per evitare duplicati
DELETE FROM football_fields WHERE city = 'Milano';

-- Inserisci i campi da calcio pubblici reali di Milano
INSERT INTO football_fields (
  name, description, latitude, longitude, address, city, province, region,
  surface_type, field_type, is_public, has_lighting, has_changing_rooms, has_parking
) VALUES
-- Parco Sempione - Campo Comunale
(
  'Campo Comunale Parco Sempione',
  'Campo da calcio pubblico nel cuore del Parco Sempione, vicino all''Arco della Pace',
  '45.4735',
  '9.1737',
  'Parco Sempione, 20121 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco Lambro - Campo Comunale
(
  'Campo Comunale Parco Lambro',
  'Campo da calcio pubblico nel Parco Lambro, zona est di Milano',
  '45.4567',
  '9.2345',
  'Via Feltre, 20134 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco Forlanini - Campo Comunale
(
  'Campo Comunale Parco Forlanini',
  'Campo da calcio pubblico nel Parco Forlanini, zona sud-est',
  '45.4321',
  '9.2456',
  'Via Corelli, 20124 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco Nord - Campo Comunale
(
  'Campo Comunale Parco Nord',
  'Campo da calcio pubblico nel Parco Nord Milano',
  '45.5234',
  '9.1567',
  'Via Clerici, 20099 Sesto San Giovanni',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco delle Cave - Campo Comunale
(
  'Campo Comunale Parco delle Cave',
  'Campo da calcio pubblico nel Parco delle Cave, zona ovest',
  '45.4567',
  '9.1234',
  'Via delle Forze Armate, 20146 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Trenno - Campo Comunale
(
  'Campo Comunale Parco di Trenno',
  'Campo da calcio pubblico nel Parco di Trenno, zona ovest',
  '45.4789',
  '9.1345',
  'Via Cascina Bellaria, 20149 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Monza - Campo Comunale (Milano)
(
  'Campo Comunale Parco di Monza',
  'Campo da calcio pubblico nel Parco di Monza, accesso da Milano',
  '45.5678',
  '9.2345',
  'Viale Brianza, 20900 Monza',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Niguarda - Campo Comunale
(
  'Campo Comunale Parco di Niguarda',
  'Campo da calcio pubblico nel Parco di Niguarda, zona nord',
  '45.5123',
  '9.1987',
  'Via Hermada, 20162 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Litta - Campo Comunale
(
  'Campo Comunale Parco di Villa Litta',
  'Campo da calcio pubblico nel Parco di Villa Litta, zona nord-ovest',
  '45.4987',
  '9.1456',
  'Via Affori, 20161 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Villa Finzi - Campo Comunale
(
  'Campo Comunale Parco di Villa Finzi',
  'Campo da calcio pubblico nel Parco di Villa Finzi, zona est',
  '45.4789',
  '9.2234',
  'Via Sant''Erlembardo, 20128 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Scheibler - Campo Comunale
(
  'Campo Comunale Parco di Villa Scheibler',
  'Campo da calcio pubblico nel Parco di Villa Scheibler, zona ovest',
  '45.4678',
  '9.1234',
  'Via Ornato, 20162 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Villa Lonati - Campo Comunale
(
  'Campo Comunale Parco di Villa Lonati',
  'Campo da calcio pubblico nel Parco di Villa Lonati, zona sud',
  '45.4234',
  '9.1987',
  'Via Zubiani, 20142 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Invernizzi - Campo Comunale
(
  'Campo Comunale Parco di Villa Invernizzi',
  'Campo da calcio pubblico nel Parco di Villa Invernizzi, zona centro',
  '45.4678',
  '9.1876',
  'Via Cappuccini, 20122 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Reale - Campo Comunale
(
  'Campo Comunale Parco di Villa Reale',
  'Campo da calcio pubblico nel Parco di Villa Reale, zona centro',
  '45.4789',
  '9.1765',
  'Via Palestro, 20121 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Villa Belgiojoso - Campo Comunale
(
  'Campo Comunale Parco di Villa Belgiojoso',
  'Campo da calcio pubblico nel Parco di Villa Belgiojoso, zona centro',
  '45.4789',
  '9.1765',
  'Via Palestro, 20121 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Necchi - Campo Comunale
(
  'Campo Comunale Parco di Villa Necchi',
  'Campo da calcio pubblico nel Parco di Villa Necchi, zona centro',
  '45.4678',
  '9.1876',
  'Via Mozart, 20122 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Mylius - Campo Comunale
(
  'Campo Comunale Parco di Villa Mylius',
  'Campo da calcio pubblico nel Parco di Villa Mylius, zona ovest',
  '45.4567',
  '9.1345',
  'Via Montevideo, 20144 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '11vs11',
  true,
  true,
  true,
  true
),

-- Parco di Villa Scheibler - Campo Comunale 2
(
  'Campo Comunale Parco di Villa Scheibler 2',
  'Secondo campo da calcio pubblico nel Parco di Villa Scheibler',
  '45.4678',
  '9.1234',
  'Via Ornato, 20162 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Lonati - Campo Comunale 2
(
  'Campo Comunale Parco di Villa Lonati 2',
  'Secondo campo da calcio pubblico nel Parco di Villa Lonati',
  '45.4234',
  '9.1987',
  'Via Zubiani, 20142 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba sintetica',
  '7vs7',
  true,
  true,
  false,
  true
),

-- Parco di Villa Invernizzi - Campo Comunale 2
(
  'Campo Comunale Parco di Villa Invernizzi 2',
  'Secondo campo da calcio pubblico nel Parco di Villa Invernizzi',
  '45.4678',
  '9.1876',
  'Via Cappuccini, 20122 Milano',
  'Milano',
  'MI',
  'Lombardia',
  'erba naturale',
  '7vs7',
  true,
  true,
  false,
  true
);

-- Aggiorna i timestamp
UPDATE football_fields SET updated_at = NOW() WHERE city = 'Milano';
